//
//  ViewController.swift
//  UserDefaultsProject
//
//  Created by Eren Akkoç on 6.05.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zamanTextField: UITextField!
    @IBOutlet weak var notTextField: UITextField!
    @IBOutlet weak var notLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        // as -> casting
        if let gelenNot = kaydedilenNot as? String {
            notLabel.text = "Yapılacak İş: \(gelenNot)"
        }
        if let gelenZaman = kaydedilenZaman as? String {
            timeLabel.text = "Yapılacak Zaman: \(gelenZaman)"
        }
        
    }

    @IBAction func kaydetClicked(_ sender: Any) {
        notLabel.text = "Yapılacak İş: \(notTextField.text!)"
        timeLabel.text = "Yapılacak Zaman: \(zamanTextField.text!)"
        
        UserDefaults.standard.set(notLabel.text!, forKey: "not")
        UserDefaults.standard.set(timeLabel.text!, forKey: "zaman")
    }
    @IBAction func silClicked(_ sender: Any) {
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")

        if kaydedilenNot is String {
            UserDefaults.standard.removeObject(forKey: "not")
        }
        if kaydedilenZaman is String {
            UserDefaults.standard.removeObject(forKey: "zaman")
        }
        
        notLabel.text = "Yapılacak İş: "
        timeLabel.text = "Yapılacak Zaman: "
    }
    
}

