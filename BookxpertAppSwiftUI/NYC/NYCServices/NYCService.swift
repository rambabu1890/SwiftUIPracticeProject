
import SwiftUI
import UIKit

struct NYCService {
    
    func fetchSchools() async throws -> [NYCSchoolModel]{
        let request = APIRequest(path: "s3k6-pzi2.json")
        return try await APIClient.shared.send(request,responseType: [NYCSchoolModel].self)
    }
}
    
