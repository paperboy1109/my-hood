//
//  AddPostViewController.swift
//  my-hood
//
//  Created by Daniel J Janiak on 5/26/16.
//  Copyright © 2016 Daniel J Janiak. All rights reserved.
//

import UIKit

class AddPostViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet var titleField: UITextField!
    @IBOutlet var descField: UITextField!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }
    
    @IBAction func makePostBtnTapped(sender: AnyObject) {
        if let title = titleField.text, let desc = descField.text, let img = postImg.image {
            let post = Post(imagePath: "", title: title, description: desc)
            DataService.instance.addPost(post)
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func cancelBtnTapped(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    
    }
    
    @IBAction func addPicBtnTapped(sender: UIButton!) {
        
        sender.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        postImg.image = image
    }

}
