//
//  ImageGridView.swift
//  Dogstagram
//
//  Created by Alptekin's Macbook on 11.02.2023.
//

import SwiftUI

struct ImageGridView: View {
    @ObservedObject var posts : PostList
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()) ],
                  alignment: .center,
                  spacing: nil,
                  pinnedViews: []) {
                        ForEach(posts.post_list, id: \.self) {post in
                            NavigationLink {
                                FeedView(posts: PostList(post: post), title: "Post")
                            } label: {
                                PostView(post: post, show_header_and_footer: false)

                            }
                        }
                  }
    }
}

struct ImageGridView_Previews: PreviewProvider {
    static var previews: some View {
        ImageGridView(posts: PostList())
            .previewLayout(.sizeThatFits)
    }
}
