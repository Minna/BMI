//
//  ResultsViewController.swift
//  BMI
//
//  Created by Minna on 10/04/21.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var BMIReult : BMI?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let BMI = BMIReult {
            
            self.view.backgroundColor = BMI.color
            self.adviceLabel.text = BMI.advice
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
