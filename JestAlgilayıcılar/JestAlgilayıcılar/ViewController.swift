//
//  ViewController.swift
//  JestAlgilayıcılar
//
//  Created by Eren Akkoç on 6.05.2026.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    
    
    @objc func changeImage(){
        if imageView.image == UIImage(named: "image1") {
            imageView.image = UIImage(named: "image2")
            label.text = "Sivas Cumhuriteti"
        } else {
            imageView.image = UIImage(named: "image1")
            label.text = "Esma Sultan"
        }
    }
 
}

