//
//  InfoViewController.swift
//  SuperHeroBook
//
//  Created by Eren Akkoç on 6.05.2026.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var selectedHeroName = ""
    var selectedHeroImageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = selectedHeroName
        imageView.image = UIImage(named: selectedHeroImageName)
    }


}
