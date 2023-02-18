//
//  PostImageView.swift
//  Dogstagram
//
//  Created by Alptekin's Macbook on 15.02.2023.
//

import SwiftUI

struct PostImageView: View {
    @Environment (\.presentationMode) var presentation_mode
    @State var caption_text: String = ""
    @Binding var image_selected: UIImage
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            HStack {
                Button {
                    presentation_mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .font(.title)
                        .padding()
                }
                .accentColor(.primary)
                Spacer()
            }
            ScrollView(.vertical, showsIndicators: false) {
                Image(uiImage: image_selected)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200 , height: 200, alignment: .center)
                    .cornerRadius(12)
                    .clipped()
                TextField("Add Your Caption Herw", text: $caption_text)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.MyTheme.beigeColor)
                    .cornerRadius(12)
                    .font(.headline)
                    .padding(.horizontal)
                    .autocapitalization(.sentences)
                Button {
                    postPicture()
                } label: {
                    Text("Post Picture".uppercased())
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding()
                        .frame(height: 60)
                        .frame(maxWidth: .infinity)
                        .background(Color.MyTheme.purpleColor)
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
                .accentColor(Color.MyTheme.yellowColor)

            }

        }
    }
    //MARK: FUNCTIONS
    
    func postPicture() {
        // Send it to database
        print("Send it to database")
    }
}

struct PostImageView_Previews: PreviewProvider {
    @State static var image: UIImage = UIImage(named: "dog1")!
    static var previews: some View {
        PostImageView(image_selected: $image)
    }
}
