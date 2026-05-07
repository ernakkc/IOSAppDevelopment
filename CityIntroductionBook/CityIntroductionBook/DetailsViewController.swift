//
//  DetailsViewController.swift
//  CityIntroductionBook
//
//  Created by Eren Akkoç on 7.05.2026.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var cityAreaLabel: UILabel!
    
    var selectedCity: City?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = selectedCity?.cityImage
        cityNameLabel.text = selectedCity?.cityName
        cityAreaLabel.text = selectedCity?.cityArea
    }
    



}
