//
//  ViewController.swift
//  Virtual Pet
//
//  Created by Julia Li on 6/23/18.
//  Copyright © 2018 Julia Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var selectedPet: Pet!

    
    @IBOutlet weak var happyDisplayView: DisplayView!
    @IBOutlet weak var foodDisplayView: DisplayView!
    @IBOutlet weak var happyValue: UILabel!
    @IBOutlet weak var foodValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedPet = Pet(pet: .cat)
        print("hi \(happyDisplayView.value)")
        happyDisplayView.value = 0.5
        happyDisplayView.color = UIColor.red
        foodDisplayView.color = UIColor.red
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playWithPet(_ sender: Any) {
        selectedPet.play()
        updateDisplay()
    }
    
    @IBAction func feedPet(_ sender: Any) {
        selectedPet.feed()
        updateDisplay()
    }
    
    
    private func updateDisplay() {
//        happyValue.text = String(selectedPet.happinessLevel)
//        let happyViewValue = Double(selectedPet.happinessLevel)/100
//        happyDisplayView.animateValue(to: 0.5)
    }
}

