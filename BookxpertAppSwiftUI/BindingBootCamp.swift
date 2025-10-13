

import SwiftUI

struct BindingBootCamp: View {
    @State var title: String = "Title"
    @State var bgColor : Color = .blue
    var body: some View {
        ZStack{
            bgColor.edgesIgnoringSafeArea(.all)
            BtnSubVviewCamp(title: $title, bgColor: $bgColor)
        }
    }
}

#Preview {
    BindingBootCamp()
}

struct BtnSubVviewCamp: View {
    @Binding var title: String
    @Binding var bgColor : Color
    
    var body: some View {
        VStack{
            Text("Hello, World!")
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Button {
                bgColor = .green
            } label: {
                Text("Submit")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                    .padding(.horizontal)            .background(Color.red)
                    .cornerRadius(10)
            }

        }
    }
}

