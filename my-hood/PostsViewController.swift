//
//  ViewController.swift
//  my-hood
//
//  Created by Daniel J Janiak on 5/26/16.
//  Copyright © 2016 Daniel J Janiak. All rights reserved.
//

import UIKit

class PostsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let post = Post(imagePath: "", title: "Post 1", description: "post 1 description")
        let post2 = Post(imagePath: "", title: "Post 2", description: "this is a second test post")
        let post3 = Post(imagePath: "", title: "Post 3", description: "highly relevant info goes here")
        
        posts.append(post)
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData()
        
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let post = posts[indexPath.row]
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        } else {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 87.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }




}

