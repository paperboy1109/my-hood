//
//  Post.swift
//  my-hood
//
//  Created by Daniel J Janiak on 5/26/16.
//  Copyright © 2016 Daniel J Janiak. All rights reserved.
//

import Foundation

class Post {
    private var imagePath: String
    private var title: String
    private var postDesc: String
    
    init(imagePath: String, title: String, description: String) {
        self.imagePath = imagePath
        self.title = title
        self.postDesc = description
    }
}