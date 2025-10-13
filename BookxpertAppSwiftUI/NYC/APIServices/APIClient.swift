
import SwiftUI
import UIKit

final class APIClient {
    static let shared = APIClient()
    private init(){}
    
  private let baseURL = "https://data.cityofnewyork.us/resource/"
    
    func send<T:Decodable>(_ request:APIRequest, responseType:T.Type) async throws -> T {
        
        guard let urlRequest = try! request.BuildURLRequest(baseUrl: baseURL) else {
          throw APINetWorkError.inavlaidURL
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            
            guard let httpResponse = response as? HTTPURLResponse else {
                throw APINetWorkError.inavlaidURL
            }
            
            if httpResponse.statusCode != 200 {
                throw APINetWorkError.inavlaidURL
            }
            do {
                return try JSONDecoder().decode(responseType, from: data)
            } catch {
                throw APINetWorkError.invalidResponse
            }
        }catch{
            throw APINetWorkError.inavlaidURL
        }
        
    }
    
    
}



