
import SwiftUI
import Combine

class UserDataViewModel:ObservableObject {
    
    @Published var asianCountries: [CountryModel] = []
    @Published var errorMessage: String?
    
    private var cancellables: Set<AnyCancellable> = []
    
   func fetchCountryData() {
        
       APIServices.shared.fetchDataFromAPI()
           .sink { completion in
               if case .failure(let error) = completion {
                   self.errorMessage = error.localizedDescription
               }
           } receiveValue: { coutries in
               self.asianCountries = coutries
               print("Data has")
               print(self.asianCountries)
           }
           .store(in: &cancellables)
    }
    
    
    
}

