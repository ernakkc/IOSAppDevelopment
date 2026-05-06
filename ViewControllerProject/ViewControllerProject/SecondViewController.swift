//
//  SecondViewController.swift
//  ViewControllerProject
//
//  Created by Eren Akkoç on 6.05.2026.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var bulunanSifre: UILabel!
    @IBOutlet weak var secondViewControllerLabel: UILabel!
    
    var verilenSifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bulunanSifre.text = verilenSifre
    }

}
