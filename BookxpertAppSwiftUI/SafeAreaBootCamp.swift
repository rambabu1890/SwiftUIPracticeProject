
import SwiftUI

struct SafeAreaBootCamp: View {
    var body: some View {
        
        ZStack {
            ScrollView{
                VStack{
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(10)
                    Spacer()
                    
                    ForEach(0..<10) { index in
                        Rectangle()
                            .frame(width: .infinity, height: 100)
                            .cornerRadius(20)
                            .padding(10)
                            .shadow(color: Color.gray, radius: 5,y: 5)
                           
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red)
            .foregroundColor(.white)
            

        }
    }
}

#Preview {
    SafeAreaBootCamp()
}
