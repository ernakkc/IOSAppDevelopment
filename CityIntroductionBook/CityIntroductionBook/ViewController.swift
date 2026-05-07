//
//  ViewController.swift
//  CityIntroductionBook
//
//  Created by Eren Akkoç on 7.05.2026.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    var cityArray = [City]()
    var userSelection: City?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        // CITIES
        let ankara = City(cityNameInput: "Ankara", cityAreaInput: "İç Anadolu", cityImageInput: UIImage(named: "ankara")!)
        let bursa = City(cityNameInput: "Bursa", cityAreaInput: "Marmara", cityImageInput: UIImage(named: "bursa")!)
        let istanbul = City(cityNameInput: "İstanbul", cityAreaInput: "Marmara", cityImageInput: UIImage(named: "istanbul")!)
        let izmir = City(cityNameInput: "İzmir", cityAreaInput: "Ege", cityImageInput: UIImage(named: "izmir")!)
        let kayseri = City(cityNameInput: "Kayseri", cityAreaInput: "İç Anadolu", cityImageInput: UIImage(named: "kayseri")!)
        let sivas = City(cityNameInput: "Sivas", cityAreaInput: "İç Anadolu", cityImageInput: UIImage(named: "sivas")!)
        
        cityArray = [istanbul, bursa, ankara, izmir, kayseri, sivas]

    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cityArray[indexPath.row].cityName
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        userSelection = cityArray[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedCity = userSelection
        }
    }
    
    
}

