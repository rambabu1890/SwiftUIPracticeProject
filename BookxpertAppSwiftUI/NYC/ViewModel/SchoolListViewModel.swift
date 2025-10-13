
import SwiftUI
import Combine

final class SchoolListViewModel:ObservableObject{

    @Published var schoolsList : [NYCSchoolModel] = []
    @Published var isLoading = false
    @Published var errorMessage : String?
    private let services = NYCService()
    
    
    @MainActor func loadSchools() async{
        isLoading = true
       
        do {
            let data = try await services.fetchSchools()
            self.schoolsList = data
        }catch {
            self.errorMessage = error.localizedDescription
        }
        
        isLoading = false
    }
   
}
