//
//  BrowserView.swift
//  Dogstagram
//
//  Created by Alptekin's Macbook on 11.02.2023.
//

import SwiftUI

struct BrowserView: View {
    var posts = PostList()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            CarouselView()
            ImageGridView(posts: posts)
        }
        .navigationTitle("Browse")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BrowserView_Previews: PreviewProvider {
    static var previews: some View {
        BrowserView()
    }
}
