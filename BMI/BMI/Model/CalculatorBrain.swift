//
//  CalculatorBrain.swift
//  BMI
//
//  Created by Minna on 10/04/21.
//

import Foundation

struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func calculateBMI(feight: Float, weight: Float) {
        let bmiValue = weight / (feight * feight)

                if bmiValue < 18.5 {
                    bmi = BMI(BMIValue: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
                } else if bmiValue < 24.9 {
                    bmi = BMI(BMIValue: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
                } else {
                    bmi = BMI(BMIValue: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
                }
    }
    
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.BMIValue ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func gerBMI() -> BMI {
        return bmi ??  BMI(BMIValue: 0.0, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
    }
    
//    func getAdvice() -> String {
//        return bmi?.advice ?? "No advice"
//    }
//
//    func getColor() -> UIColor {
//        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//    }
//
}
