//
//  PostViewModel.swift
//  swiftUIAlamofireExample
//
//  Created by Sinan Özman on 8.06.2019.
//  Copyright © 2019 Sinan Özman. All rights reserved.
//

import Foundation
import SwiftUI
import Combine
import Alamofire

final class PostViewModel: BindableObject {
    
    var didChange = PassthroughSubject<PostViewModel, Never>()
    
    var posts: [PostModel.Response] = [PostModel.Response]() {
        didSet { didChange.send(self) }
    }
    
    init() {
        getPosts()
    }
    func getPosts() {
        Alamofire.request("https://jsonplaceholder.typicode.com/posts").responsePosts { (response) in
            if let response = response.result.value {
                self.posts = response
            }
        }
    }
}
