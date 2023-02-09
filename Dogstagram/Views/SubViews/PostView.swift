//
//  PostView.swift
//  Dogstagram
//
//  Created by Alptekin's Macbook on 8.02.2023.
//

import SwiftUI

struct PostView: View {
    @State var post: PostModel
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            
            // MARK: HEADER
            HStack {
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30, alignment: .center)
                .cornerRadius(15)
                Text(post.user_name)
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                Spacer()
                Image(systemName: "ellipsis")
                    .font(.headline)
            }
            .padding(.all, 6)
            
            // MARK: IMAGE
            
            Image("dog1")
                .resizable()
                .scaledToFit()
            //MARK: FOOTER
            HStack(alignment: .center, spacing: 20, content: {
                Image(systemName: "heart")
                    .font(.title3)
                Image(systemName: "bubble.middle.bottom")
                    .font(.title3)
                Image(systemName: "paperplane")
                    .font(.title3)
                Spacer()
            })
                .padding(.all, 6)
            
            if let caption = post.caption {
                HStack {
                    Text(caption)
                    Spacer(minLength: 0)
                }
                .padding(.all, 6)
            }
        })
    }
}

struct PostView_Previews: PreviewProvider {
    static var post: PostModel = PostModel(post_id: "", user_id: "", user_name: "Foo Boo", caption: "Test Cap", date_create: Date(), like_count: 0, liked_by_user: false)
    static var previews: some View {
        PostView(post: post)
            .previewLayout(.sizeThatFits)
    }
}
