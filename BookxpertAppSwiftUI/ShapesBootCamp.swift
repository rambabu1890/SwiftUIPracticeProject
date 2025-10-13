
import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
        
        Image(systemName: "heart.fill")
            .foregroundColor(.white)
            .font(.system(size: 50))            .background(
                Circle()
                    .fill(Color.mint)
                    .frame(width: 150, height: 150)
                    .overlay(alignment: .bottomTrailing, content: {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 50,height: 50)
                            .overlay(alignment: .center) {
                                Text("9")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                
                            }
                    })
            )
            .shadow(color: .gray, radius: 10, x: 0, y: 010)
        
//        RoundedRectangle(cornerRadius: 20)
//            .fill(Color.mint)
//            .frame(width: 300, height: 200)
//            .shadow(color: .gray, radius: 10, x: 0, y: 0)
        //Circle()
//            .fill(.white)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round,  dash: [30]))
//        ZStack {
//            // Outer circle (white fill with red stroke)
//            Circle()
//                .stroke(Color.purple, lineWidth: 4)
//                .background(Circle().fill(Color.purple))
//                .frame(width: 200, height: 200)
//
//            // Inner circle (black)
//            Circle()
//                .fill(Color.mint)
//                .frame(width: 160, height: 160)
//        }
       
    }
}

#Preview {
    ShapesBootCamp()
}
