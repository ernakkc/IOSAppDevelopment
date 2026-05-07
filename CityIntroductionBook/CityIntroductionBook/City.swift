//
//  City.swift
//  CityIntroductionBook
//
//  Created by Eren Akkoç on 7.05.2026.
//


import UIKit

class City {
    let cityName:String
    let cityArea:String
    let cityImage:UIImage
    
    init (cityNameInput:String, cityAreaInput:String, cityImageInput:UIImage) {
        self.cityName = cityNameInput
        self.cityArea = cityAreaInput
        self.cityImage = cityImageInput
    }
}
