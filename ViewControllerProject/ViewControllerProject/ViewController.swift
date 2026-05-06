//
//  ViewController.swift
//  ViewControllerProject
//
//  Created by Eren Akkoç on 6.05.2026.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstViewControllerLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View did load")
    }

    override func viewDidAppear(_ animated: Bool) {
        print("View did Appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("View did disappear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textField.text = ""
        print("View will appear")
    }
    
    

    @IBAction func kontrolEt(_ sender: Any) {
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.verilenSifre = "Verilen Şifre: " + textField.text!
        }
    }
}

