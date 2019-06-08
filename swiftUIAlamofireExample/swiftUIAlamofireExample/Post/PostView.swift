//
//  PostView.swift
//  swiftUIAlamofireExample
//
//  Created by Sinan Özman on 8.06.2019.
//  Copyright © 2019 Sinan Özman. All rights reserved.
//

import SwiftUI

struct PostView : View {
    @ObjectBinding var viewModel = PostViewModel()
    var body: some View {
        List(viewModel.posts) { post in
            Text(post.postTitle)
        }
    }
}
