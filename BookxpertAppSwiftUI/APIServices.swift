
import Combine
import UIKit

class APIServices {
    static let shared = APIServices()
    private init(){}
    
        
        
        func fetchDataFromAPI() -> AnyPublisher<[CountryModel], Error> {
            let url = URL(string: "https://dummy-json.mock.beeceptor.com/continents")!
            return URLSession.shared.dataTaskPublisher(for: url)
                .compactMap(\.data)
                .decode(type: [CountryModel].self, decoder: JSONDecoder()) // ✅ No wrapper
                .receive(on: RunLoop.main)
                .eraseToAnyPublisher()
        }
    
    
}

