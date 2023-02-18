//
//  ImagePicker.swift
//  Dogstagram
//
//  Created by Alptekin's Macbook on 11.02.2023.
//

import Foundation
import SwiftUI

struct ImagePicker : UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentation_mode
    @Binding var image_selected : UIImage
    @Binding var source_type : UIImagePickerController.SourceType
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = source_type
        picker.allowsEditing = true
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: UIViewControllerRepresentableContext<ImagePicker>) {
        
    }
    
    func makeCoordinator() -> ImagePickerCoordinator {
        return ImagePickerCoordinator(parent: self)
    }
    
    class ImagePickerCoordinator : NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent : ImagePicker
        init(parent : ImagePicker) {
            self.parent = parent
        }
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.editedImage] as? UIImage ?? info[.originalImage] as? UIImage {
                parent.image_selected = image
                parent.presentation_mode.wrappedValue.dismiss()
            }
            
              
        }
    }
}
