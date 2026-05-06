//
//  ViewController.swift
//  Timers
//
//  Created by Eren Akkoç on 6.05.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!

    var timer = Timer()
    var kalanZaman = 15.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func startButtonClicked(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 0.001, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunc(){
        timeLabel.text = "\(kalanZaman)"
        kalanZaman -= 0.001
        
        if Int(kalanZaman) == 0 {
            timeLabel.text = "00.00.00"
            timer.invalidate()
        }
    }
}

