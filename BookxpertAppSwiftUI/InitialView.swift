
import SwiftUI

struct InitialView: View {
    
//    init() {
//        UITabBar.appearance().backgroundColor = .systemMint
//        UITabBar.appearance().unselectedItemTintColor = UIColor(Color.white)
//    }
    
    var body: some View {
       
        
        ExpandableTextView(text: "Hello world. This is a long text that will show only the first two lines initially and then expand when Read more is tapped. You can use this pattern for article previews or description texts in SwiftUI.")

        
//       ZStack {
//            Color.white
//            TabView {
//                HomeView()
//                    .tabItem {
//                        Image(systemName: "house")
//                        Text("Home")
//                    }
//                    .tag(0)
//                DisplayPDFView()
//                    .tabItem {
//                        Image(systemName: "doc.fill")
//                        Text("PDF")
//                    }
//                    .tag(1)
//                ProfileView()
//                    .tabItem {
//                        Image(systemName: "person.circle")
//                        Text("Profile")
//                    }
//                    .tag(2)
//            }
//        }
    }
}

#Preview {
    InitialView()
}
struct ExpandableTextView: View {
    let text: String
    @State private var isExpanded = false
    @State private var showReadMore = false

    var body: some View {
        VStack(alignment: .leading) {
            Text(text)
                .lineLimit(isExpanded ? nil : 2)
                .background(
                    Text(text)
                        .lineLimit(2)
                        .background(GeometryReader { geo in
                            Color.clear.onAppear {
                                let lineHeight: CGFloat = UIFont.preferredFont(forTextStyle: .body).lineHeight
                                if geo.size.height > lineHeight * 2 {
                                    showReadMore = true
                                }
                            }
                        })
                        .hidden()
                )

            if showReadMore {
                Button(action: {
                    withAnimation {
                        isExpanded.toggle()
                    }
                }) {
                    Text(isExpanded ? "Read less" : "Read more")
                        .foregroundColor(.blue)
                        .font(.caption)
                }
            }
        }
        .frame(width: 300, alignment: .leading)
        .padding()
        .border(Color.red)
    }
}
