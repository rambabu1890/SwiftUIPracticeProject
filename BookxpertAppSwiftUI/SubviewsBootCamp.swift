

import SwiftUI

struct SubviewsBootCamp: View {
    var body: some View {
        ZStack{
            Color.primary.edgesIgnoringSafeArea(.all)
            contentView
        }
    }
    
    var contentView:some View {
        HStack(spacing: 20){
            MyItems(count: 10, cbgColor: .red, title: "Apple")
            MyItems(count: 30, cbgColor: .orange, title: "Oranges")
            MyItems(count: 30, cbgColor: .green, title: "Guavas")
        }
    }
}

#Preview {
    SubviewsBootCamp()
}

struct MyItems: View {
    let count: Int
    let cbgColor:Color
    let title:String
    var body: some View {
        VStack{
            Text("\(count)")
                .fontWeight(.bold)
            Text(title).fontWeight(.bold)
        }.padding()
            .background(cbgColor)
            .cornerRadius(20)
            .foregroundColor(.white)
    }
}
