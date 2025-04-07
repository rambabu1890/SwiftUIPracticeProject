//


import SwiftUI

struct HomeView: View {
    
    let viewList : [String] = ["Google SignIn", "PDF View", "Gallery Images", "Devices Info" ]
    
    var body: some View {
        NavigationStack {
            VStack{
                CustomNavigationBar(title: "Home") // No back button on Home
                
                List {
                    ForEach(viewList,id: \.self) { item in
                        NavigationLink(destination: moveToNextScreen(for: item)) {
                            Text(item)
                        }
                    }
                }
            }
            .listStyle(.plain)
            .toolbar(.hidden, for: .navigationBar)
            
        }
    }
    
    @ViewBuilder
    func moveToNextScreen(for item: String) -> some View {
        
        switch item {
            
        case "Google SignIn":
            GoogleSignInView()
        case "PDF View":
            DisplayPDFView()
        case "Gallery Images":
            GalleryView()
        case "Devices Info":
            DevicesInfoView()
        default:
            Text("Unknown View")
        }
        
    }
    
}

#Preview {
    HomeView()
}

struct CustomNavigationBar: View {
    let title: String
    var onBack: (() -> Void)?  // Closure to handle back button action
    
    var body: some View {
        HStack {
            if let onBack = onBack {  // Show back button only if onBack is provided
                Button(action: onBack) {
                    Image(systemName: "chevron.backward")
                        .font(.title2)
                        .foregroundColor(.white)
                }
            }
            
            Spacer()
            Spacer()
            Text(title)
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.white)
               
            Spacer()
            
            Spacer() // Ensures title remains centered
        }
        .frame(height: 10)
        .padding()
        .background(Color.mint) // Toolbar background color
    }
}
