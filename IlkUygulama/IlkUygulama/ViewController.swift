//
//  ViewController.swift
//  IlkUygulama
//
//  Created by Eren Akkoç on 6.05.2026.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonTiklandi(_ sender: Any) {
        if (textLabel.text == "Esma ❤️ Eren") {
            textLabel.text = "Esma 💔 Eren"
        } else {
            textLabel.text = "Esma ❤️ Eren"
        }
    }
}

