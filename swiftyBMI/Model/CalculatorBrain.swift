//
//  CalculatorBrain.swift
//  swiftyBMI
//
//  Created by Ryan Tolentino on 5/4/20.
//  Copyright © 2020 Ryan Tolentino. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float = 0.0
    
    //let bmi = weight/( height * height)
    //bmiValue = String(format: "%.1f", bmi)
    mutating func calculateBMI (height: Float,weight:Float) {
         bmi = weight/( height * height)
    }
    
    func getBMIValue () -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
    }
    
}
