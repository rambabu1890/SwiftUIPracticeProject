

import SwiftUI

struct DisplayPDFView: View {
    
    @ObservedObject var viewmodel = GalleryViewModelClass()
    @State private var counter: Int = 0
    var body: some View {
        Text("Text Count is \(counter)")
        Button("Increment") {
            counter += 1
        }
    }
}

#Preview {
    DisplayPDFView()
}
