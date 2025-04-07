//
//  GalleryView.swift
//  BookxpertAppSwiftUI
//
//  Created by Rambabu on 25/03/25.
//

import SwiftUI

struct GalleryView: View {
    @Environment(\.presentationMode)  var presentationMode
    @State private var selectedImage: UIImage? = nil  // Stores selected image
       @State private var isImagePickerPresented = false  // Controls picker visibility
       @State private var isCamera = false
    @State private var showActionSheet = false  // Controls the Action Sheet

    var body: some View {
        VStack{
            CustomNavigationBar(title: "Gallery View") {
                presentationMode.wrappedValue.dismiss()
            }

            if let image = selectedImage {
                            Image(uiImage: image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300, height: 300)
                                .cornerRadius(10)
                        } else {
                            Image(systemName: "camera.circle")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300, height: 300)
                                .foregroundColor(.gray)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                                .padding(.top,20)
                        }
            
            // Buttons for selecting an image
            Button("Select Image") {
                            showActionSheet.toggle() // Show bottom sheet
                        }
                        .padding()
                        .frame(width: 300,height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.top,30) // Bottom padding
                    .actionSheet(isPresented: $showActionSheet) {
                        ActionSheet(
                            title: Text("Choose Image Source"),
                            message: Text("Select an image from the gallery or take a new one."),
                            buttons: [
                                .default(Text("Gallery")) {
                                    isCamera = false
                                    isImagePickerPresented.toggle()
                                },
                                .default(Text("Camera")) {
                                    isCamera = true
                                    isImagePickerPresented.toggle()
                                },
                                .cancel()
                            ]
                        )
                    }
                    .sheet(isPresented: $isImagePickerPresented) {
                        ImagePicker(selectedImage: $selectedImage, isCamera: isCamera)
                    }
            Spacer()
        }
        .toolbarVisibility(.hidden, for: .navigationBar)
    }
}

#Preview {
    GalleryView()
}


struct ImagePicker: UIViewControllerRepresentable {
    @Binding var selectedImage: UIImage?
    var isCamera: Bool
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker
        
        init(parent: ImagePicker) {
            self.parent = parent
        }
        
        // Called when the user selects an image
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.selectedImage = image
            }
            picker.dismiss(animated: true)
        }
        
        // Called when the user cancels
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true)
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = isCamera ? .camera : .photoLibrary
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
}
