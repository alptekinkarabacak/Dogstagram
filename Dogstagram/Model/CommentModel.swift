//
//  CommentModel.swift
//  Dogstagram
//
//  Created by Alptekin's Macbook on 10.02.2023.
//

import Foundation
import SwiftUI

struct CommentModel : Identifiable, Hashable {
    var id = UUID()
    var comment_id : String
    var user_id : String
    var username : String
    var content : String
    var date_created : Date
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
