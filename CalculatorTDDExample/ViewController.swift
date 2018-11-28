//
//  ViewController.swift
//  CalculatorTDDExample
//
//  Created by Marcos Molero on 27/11/2018.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dividendTextField: UITextField!
    @IBOutlet weak var dividerTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func divideButtonTapped(_ sender: UIButton) {
        
        let calculatorEngine: CalculatorEngine = CalculatorEngine()
        
        if let numberA = dividendTextField.text, let numberB = dividerTextField.text, let dividend = Int(numberA), let divider = Int(numberB) {
            
            if let result = calculatorEngine.divide(dividend: dividend, divider: divider) {
                resultLabel.text = String(result)
            }
            
        }
        
    }
    

}

