//
//  CalculatorEngine.swift
//  CalculatorTDDExample
//
//  Created by Marcos Molero on 27/11/2018.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import Foundation

class CalculatorEngine {
    
    func divide(dividend: Int, divider: Int ) -> Int? {
        if divider == 0 {
            return nil
        }
        
        return dividend / divider
    }
}
