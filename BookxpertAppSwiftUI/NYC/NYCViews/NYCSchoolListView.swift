

import SwiftUI
import Combine
struct NYCSchoolListView: View {
   
    @StateObject private var viewModel = SchoolListViewModel()
    
    var body: some View {
        ZStack{
            List(viewModel.schoolsList,id:\.dbn) { school in
                
                VStack{
                    Text(school.school_name ?? "")
                }
            }
        }
               .task {
                    await viewModel.loadSchools()
                }
    }
}

#Preview {
    NYCSchoolListView()
}
