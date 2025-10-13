

import SwiftUI

struct ProfileView: View {
    
    @State var isShow = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            
            VStack{
                Button("Show Transition") {
                    isShow.toggle()
                }
                Spacer()
            }.padding(.top,100)
            
            if isShow {
                Rectangle().cornerRadius(30)
                
                .frame(height: UIScreen.main.bounds.height * 0.5)
                .animation(.default)
                .transition(.move(edge: .bottom))
        }
            
        }.edgesIgnoringSafeArea(.all)
    }
}
#Preview {
    ProfileView()
}
