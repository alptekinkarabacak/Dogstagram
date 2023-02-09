//
//  FeedView.swift
//  Dogstagram
//
//  Created by Alptekin's Macbook on 8.02.2023.
//

import SwiftUI

struct FeedView: View {
    @ObservedObject var posts: PostList
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            //PostView()
        }).navigationBarTitle("FEED VIEW").navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationView {
            FeedView(posts: PostList())
        }
    }
}
