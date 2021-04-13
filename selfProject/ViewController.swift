//
//  ViewController.swift
//  selfProject
//
//  Created by Bekzod Khaitboev on 1/27/21.
//

import UIKit
var counter = 60


let productTime = ["bigBon": 10, "iceCream": 5, "Manti": 90]

var timer = Timer()
var totalTime = 0
var secondPassed = 0


class ViewController: UIViewController {
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var label: UILabel!
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        timer.invalidate()
        
      timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        let hardness = sender.currentTitle!
        
        totalTime = productTime[hardness]!
        progressBar.progress = 0
        secondPassed = 0
        label.text = hardness
        
    }
    
    @objc func updateCounter() {
        
        progressBar.progress = Float(secondPassed) / Float(totalTime)
        print(Float(secondPassed) / Float(totalTime))
        
        if secondPassed < totalTime {
            
            
            secondPassed += 1
        }else {
            timer.invalidate()
            label.text = "DONE"
        }
    }

}


