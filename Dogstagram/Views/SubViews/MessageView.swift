//
//  MessageView.swift
//  Dogstagram
//
//  Created by Alptekin's Macbook on 10.02.2023.
//

import SwiftUI

struct MessageView: View {
    @State var comment : CommentModel
    var body: some View {
        HStack{
            // MARK: Profile Image
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40, alignment: .center)
            VStack(alignment: .leading, spacing: 4, content: {
                // MARK: Username
                Text(comment.username)
                    .font(.caption)
                    .foregroundColor(.primary)
                // MARK: Content
                Text(comment.content)
                    .padding(.all, 10)
                    .foregroundColor(.primary)
                    .background(Color.gray)
                    .cornerRadius(50)
                
            })
            Spacer(minLength: 10)
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var comment : CommentModel = CommentModel(comment_id: " ", user_id: " ", username: " Undefinied Name", content: "Undefined Comment", date_created: Date())
    static var previews: some View {
        MessageView(comment: comment)
            .previewLayout(.sizeThatFits)
    }
}
