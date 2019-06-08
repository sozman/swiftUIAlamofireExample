//
//  PostModel.swift
//  swiftUIAlamofireExample
//
//  Created by Sinan Özman on 8.06.2019.
//  Copyright © 2019 Sinan Özman. All rights reserved.
//

import Foundation
import SwiftUI

class PostModel {
    struct Response: Codable, Identifiable {
        var id: Int
        var userID: Int
        var postTitle: String
        var postBody: String
        
        init(_ userID: Int,
             _ id: Int,
             _ postTitle: String,
             _ postBody: String){
            self.id = id
            self.userID = userID
            self.postTitle = postTitle
            self.postBody = postBody
        }
        
        enum CodingKeys: String, CodingKey {
            case id
            case userID = "userId"
            case postTitle = "title"
            case postBody = "body"
        }
    }
}

