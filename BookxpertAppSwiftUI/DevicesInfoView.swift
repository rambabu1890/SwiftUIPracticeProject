

import SwiftUI

struct DevicesInfoView: View {
    var body: some View {
        VStack{
            CustomHeaderView(title: "Device Info",subTile: "latest Devices",icon: "heart.fill")
            CustomHeaderView(title: "Second Device",icon: "heart.fill")
            GenericView(title: "Tird Device") {
                Text("Helllo world")
            }
           
                
        }
        Spacer()
    }
}

struct GenericView<Content:View>:View{
    var title:String
    var contentView:Content
    init(title: String,@ViewBuilder contentView: () -> Content) {
        self.title = title
        self.contentView = contentView()
    }
    
    var body: some View {
        VStack(alignment:.leading){
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
            contentView
            RoundedRectangle(cornerRadius: 10)
                .frame(height: 2)
                .foregroundColor(.gray)
        }.padding()
            .frame(maxWidth: .infinity, alignment:.leading)
    }
}


#Preview {
    DevicesInfoView()
}
struct CustomHeaderView : View {
    var title:String
    var subTile:String?
    var icon:String?
    var body: some View {
        VStack(alignment:.leading){
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
            if let subTile = subTile{
                Text(subTile)
                    .font(.subheadline)
                    .fontWeight(.bold)
            }
            if let icon = icon{
                Image(systemName: icon)
            }
           
            RoundedRectangle(cornerRadius: 10)
                .frame(height: 2)
                .foregroundColor(.gray)
        }.padding()
            .frame(maxWidth: .infinity, alignment:.leading)
    }
}
