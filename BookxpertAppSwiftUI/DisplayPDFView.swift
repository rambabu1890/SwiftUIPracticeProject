

import SwiftUI

struct DisplayPDFView: View {
    
    @State var isOpenSheet:Bool = false
  
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
                Button {
                    isOpenSheet.toggle()
                } label: {
                    Text("Button")
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }

                .sheet(isPresented: $isOpenSheet) {
                    Text("Hello Rams")
                        
                }
        }
    }
}

#Preview {
    DisplayPDFView()
}
