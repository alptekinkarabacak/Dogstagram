//
//  UploadView.swift
//  Dogstagram
//
//  Created by Alptekin's Macbook on 11.02.2023.
//

import SwiftUI
import UIKit

struct UploadView: View {
    @State var show_image_picker : Bool = false
    @State var image_selected : UIImage = UIImage(named: "logo")!
    @State var source_type : UIImagePickerController.SourceType = .camera
    @State var show_post_image_view: Bool = false
    var body: some View {
        ZStack {
            VStack {
                Button {
                    source_type = UIImagePickerController.SourceType.camera
                    show_image_picker.toggle()
                } label: {
                    Text("Take Photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.yellowColor)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center )
                .background(Color.MyTheme.purpleColor)
                
                Button {
                    source_type = UIImagePickerController.SourceType.photoLibrary
                    show_image_picker.toggle()
                } label: {
                    Text("Import Photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.purpleColor)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center )
                .background(Color.MyTheme.yellowColor)
            }
            .sheet(isPresented: $show_post_image_view) {
                sequeToPostImageView()
            } content: {
                PostImageView(image_selected: $image_selected)
            }

            Image("logo.transparent")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(radius: 12)
                .fullScreenCover(isPresented: $show_post_image_view) {
                    PostImageView(image_selected: $image_selected)
                }
        }
        .edgesIgnoringSafeArea(.top)
    }
    
    // MARK: Functions
    func  sequeToPostImageView() {
        DispatchQueue.main.asyncAfter(deadline: .now() - 0.5) {
            show_post_image_view.toggle()
        }
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
