//
//  ResultViewController.swift
//  swiftyBMI
//
//  Created by Ryan Tolentino on 5/4/20.
//  Copyright © 2020 Ryan Tolentino. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var bmiSuggestion: UILabel!
    
    var resultbmiValue: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = resultbmiValue
        bmiSuggestion.text = "Eat More Snacks"
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
