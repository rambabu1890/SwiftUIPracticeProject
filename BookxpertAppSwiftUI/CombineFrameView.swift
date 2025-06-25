
import SwiftUI
import Combine

struct CombineFrameView: View {
    @StateObject private var viewModel = UserDataViewModel()

    var body: some View {
           
        NavigationView {
                   List(viewModel.asianCountries) { country in
                       VStack(alignment: .leading) {
                           Text(country.name ?? "Unknown")
                               .font(.headline)
                           Text("Population: \(country.population ?? 0)")
                               .font(.subheadline)
                       }
                   }
                   .navigationTitle("Continents")
                   .onAppear {
                       viewModel.fetchCountryData()
                   }
               }
       
    }
}

#Preview {
    CombineFrameView()
}

