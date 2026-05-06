//
//  ViewController.swift
//  AlertMessages
//
//  Created by Eren Akkoç on 6.05.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signUpClicked(_ sender: Any) {
        if emailTextField.text == "" {
            alertFunc(success: false, message: "Email can not be empty !")
        } else if emailTextField.text?.contains("@") == nil {
            alertFunc(success: false, message: "Email not correct !")
        } else if passwordTextField.text == "" {
            alertFunc(success: false, message: "Password can not be empty !")
        } else if passwordTextField.text != password2TextField.text {
            alertFunc(success: false, message: "Passwords are doesn't match !")
        } else {
            alertFunc(success: true, message: "Signed Up Succesfully !")
        }
    
        
    }
    
    
    
    func alertFunc(success:Bool, message:String) {
        let title:String
        if success {
            title = "Success !"
        } else {
            title = "ERROR !"
        }
        
        let alertMessage = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(
            title: "Okay",
            style: .default) { UIAlertAction in
            // when click ok button
            print("OK button clicked")
        }
        alertMessage.addAction(okButton)
        self.present(alertMessage, animated: true, completion: nil)
    }
}

