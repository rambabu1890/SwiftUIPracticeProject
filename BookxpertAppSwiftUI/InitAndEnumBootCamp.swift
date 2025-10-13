
import SwiftUI

struct InitAndEnumBootCamp: View {
    
    let gridItems:[GridItem] = [
        GridItem(.flexible(minimum: 50, maximum: 100), spacing: nil, alignment:.center),
        GridItem(.flexible(minimum: 50, maximum: 100), spacing: nil, alignment:.center),
        GridItem(.flexible(minimum: 50, maximum: 100), spacing: nil, alignment:.center),
       
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItems, spacing: 10, pinnedViews: [.sectionHeaders]) {
                Section {
                     Text("Section Header one")
                         .foregroundColor(.white)
                         .padding()
                         .background(Color.pink)
                 }
                 ForEach(0..<30) { i in
                     Rectangle()
                         .background(Color.blue)
                         .frame(height: 100)
                 }
                 Section {
                     Text("Section Header two")
                         .frame(maxWidth: .infinity,alignment: .leading)
                         .foregroundColor(.white)
                         .background(Color.pink)
                 }
                 ForEach(0..<30) { i in
                     Rectangle()
                         .fill(Color.blue)
                         .frame(height: 100)
                         
                 }
            }
            
            
          
            
            
        }
        
    }
}

#Preview {
    HStack{
        InitAndEnumBootCamp()
     
    }
}
