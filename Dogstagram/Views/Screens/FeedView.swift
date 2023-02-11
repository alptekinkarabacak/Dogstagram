//
//  FeedView.swift
//  Dogstagram
//
//  Created by Alptekin's Macbook on 8.02.2023.
//

import SwiftUI

struct FeedView: View {
    @ObservedObject var posts: PostList
    var title: String
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            LazyVStack{
                ForEach(posts.post_list) { post in
                    PostView(post: post, show_header_and_footer: true)
                }
            }
        })
        .navigationBarTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationView {
            FeedView(posts: PostList(), title: "Feed View")
        }
    }
}
