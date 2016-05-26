//
//  PostCell.swift
//  my-hood
//
//  Created by Daniel J Janiak on 5/26/16.
//  Copyright © 2016 Daniel J Janiak. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(post: Post) {
        titleLbl.text = post.title
        descLbl.text = post.postDesc
    }

}
