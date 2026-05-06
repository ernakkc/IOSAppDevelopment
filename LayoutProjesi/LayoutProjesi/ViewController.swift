//
//  ViewController.swift
//  LayoutProjesi
//
//  Created by Eren Akkoç on 6.05.2026.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        // LABEL
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(
            x: width * 0.5 - width * 0.8 / 2,
            y: height * 0.5 - 30,
            width: width * 0.8,
            height: 60)
        view.addSubview(myLabel)
    
        // BUTTON
        let myButton = UIButton()
        myButton.setTitle("Click", for: .normal)
        myButton.setTitleColor(.black, for: .normal)
        myButton.cornerConfiguration = .corners(radius: 10)
        myButton.backgroundColor = .white
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.5 + 50, width: 200, height: 50)
        view.addSubview(myButton)
        
        /// button action
        myButton.addTarget(self, action: #selector(ViewController.myFunc), for: UIControl.Event.touchUpInside)
        
        
        
        
        
    }
    
    @IBAction func myFunc() {
        print("User Pressed Button")
    }

}

