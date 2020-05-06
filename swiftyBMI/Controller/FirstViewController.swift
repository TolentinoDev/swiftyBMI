//
//  ViewController.swift
//  swiftyBMI
//
//  Created by Ryan Tolentino on 4/30/20.
//  Copyright © 2020 Ryan Tolentino. All rights reserved.
//

import UIKit

var bmiValue = "0.0"

class FirstViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func heightSlider(_ sender: UISlider) {
        let currentValue = String(format: "%.2f", sender.value)
        heightLabel.text = "\(currentValue) M "
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let currentValue = String(format: "%.0f", sender.value)
        weightLabel.text = "\(currentValue) Kg "
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = (heightSlider.value)
        let weight = (weightSlider.value)
        let bmi = weight/( height * height)
        bmiValue = String(format: "%.1f", bmi)
        print(bmiValue)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "goToResult"{
                let destinationVC = segue.destination as! ResultViewController
                destinationVC.resultbmiValue = bmiValue
            }
            
        }
    }

