//
//  PostModel.swift
//  Dogstagram
//
//  Created by Alptekin's Macbook on 8.02.2023.
//

import Foundation
import SwiftUI

struct PostModel : Identifiable, Hashable { // To use UUID
    var id = UUID()
    var post_id: String
    var user_id: String
    var user_name: String
    var caption: String?
    var date_create: Date
    var like_count: Int
    var liked_by_user: Bool
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    
}
