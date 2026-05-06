//
//  ViewController.swift
//  DortIslemUygulamasi
//
//  Created by Eren Akkoç on 6.05.2026.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ilkRakamLabel: UITextField!
    @IBOutlet weak var ikinciRakamLabel: UITextField!
    @IBOutlet weak var sonucLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func toplamaTiklandı(_ sender: Any) {
        if let ilkSayi = Int(ilkRakamLabel.text!) {
            if let ikinciSayi = Int(ikinciRakamLabel.text!){
                sonucLabel.text = "Sonuç: " + String(ilkSayi + ikinciSayi)
            }
        }
    }
    
    @IBAction func cikarmaTiklandi(_ sender: Any) {
        if let ilkSayi = Int(ilkRakamLabel.text!) {
            if let ikinciSayi = Int(ikinciRakamLabel.text!){
                sonucLabel.text = "Sonuç: " + String(ilkSayi - ikinciSayi)
            }
        }
    }
    
    @IBAction func carpmaTiklandi(_ sender: Any) {
        if let ilkSayi = Int(ilkRakamLabel.text!) {
            if let ikinciSayi = Int(ikinciRakamLabel.text!){
                sonucLabel.text = "Sonuç: " + String(ilkSayi * ikinciSayi)
            }
        }
    }
    
    @IBAction func bolmeTiklandi(_ sender: Any) {
        if let ilkSayi = Int(ilkRakamLabel.text!) {
            if let ikinciSayi = Int(ikinciRakamLabel.text!){
                sonucLabel.text = "Sonuç: " + String(ilkSayi / ikinciSayi)
            }
        }
    }
}

