//
//  ViewController.swift
//  SuperHeroBook
//
//  Created by Eren Akkoç on 6.05.2026.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var superHeroNames = ["Batman", "Captain America" , "Deadpool", "Hulk", "IronMan", "SuperMan"]
    var superHerosImageNames = ["batman", "captainAmerica", "deadpool", "hulk", "ironman", "superman"]
    
    var selectedHeroName: String?
    var selectedHeroImageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeroNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superHeroNames[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            superHeroNames.remove(at: indexPath.row)
            superHerosImageNames.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedHeroName = superHeroNames[indexPath.row]
        selectedHeroImageName = superHerosImageNames[indexPath.row]

        performSegue(withIdentifier: "toVC", sender: nil)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toVC" {
            let destinationVC = segue.destination as! InfoViewController
            
            destinationVC.selectedHeroName = self.selectedHeroName!
            destinationVC.selectedHeroImageName = self.selectedHeroImageName!
        }
    }
}
