//
//  ViewController.swift
//  BMI
//
//  Created by Minna on 09/04/21.
//

import UIKit

class CalculatorView: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButtonPressed(_ sender: Any) {
        let weight = weightSlider.value
        let height = heightSlider.value
        
        calculatorBrain.calculateBMI(feight: height, weight: weight)
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    @IBAction func heightChanged(_ sender: UISlider) {
        
        let heghtLabel = String(format: "%.2fm", sender.value)
        heightLabel.text = heghtLabel
    }
    @IBAction func weightChanged(_ sender: UISlider) {
        
        let weightLabelText = String(format: "%.0fkg", sender.value)
        weightLabel.text = weightLabelText
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            
            let resultview = segue.destination as? ResultsViewController
            resultview?.BMIReult = calculatorBrain.gerBMI()
        }
    }
}

