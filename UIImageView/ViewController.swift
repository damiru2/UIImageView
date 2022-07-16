//
//  ViewController.swift
//  UIImageView
//
//  Created by Damir Chalkarov on 16.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = 10
        imageView.layer.borderWidth = 4
        imageView.layer.borderColor = UIColor.red.cgColor
        
//        let image = UIImage(named: "1")!
//
//        imageView.image = image
        
        let imageUrl = URL(string: "https://images.unsplash.com/photo-1571781565036-d3f759be73e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")!
        
        let data = try! Data(contentsOf: imageUrl)
        let image = UIImage(data: data)
        
        imageView.image = image
    }
    
    
    

}

