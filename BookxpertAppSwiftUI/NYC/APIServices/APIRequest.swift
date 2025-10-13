

import UIKit
import SwiftUI

enum APINetWorkError:Error{
    
    case inavlaidURL
    case invalidResponse
    case invalidData
    case invalideParams
    
}

struct APIRequest {
    
    var path:String
    var method:String = "GET"
    var queryItems:[URLQueryItem] = []
    var headers:[String:String] = [:]
    var bodyData:Data? = nil
    
    func BuildURLRequest(baseUrl:String) throws -> URLRequest?{
        guard var componets = URLComponents(string: baseUrl+path) else{
            return nil
        }
        
        if !queryItems.isEmpty{
            componets.queryItems = queryItems
        }
        guard let url = componets.url else{
            return nil
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = method
        request.httpBody = bodyData
        return request
    }
}

