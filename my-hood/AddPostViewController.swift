//
//  AddPostViewController.swift
//  my-hood
//
//  Created by Daniel J Janiak on 5/26/16.
//  Copyright © 2016 Daniel J Janiak. All rights reserved.
//

import UIKit

class AddPostViewController: UIViewController {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet var titleField: UITextField!
    @IBOutlet var descField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true
    }
    
    @IBAction func makePostBtnTapped(sender: AnyObject) {
        
    }
    
    @IBAction func cancelBtnTapped(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    
    }
    
    @IBAction func adPicBtnTapped(sender: UIButton!) {
        
        sender.setTitle("", forState: .Normal)
        
    }

}
