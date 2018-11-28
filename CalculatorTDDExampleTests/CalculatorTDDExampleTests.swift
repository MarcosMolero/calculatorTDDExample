//
//  CalculatorTDDExampleTests.swift
//  CalculatorTDDExampleTests
//
//  Created by Marcos Molero on 27/11/2018.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import XCTest
@testable import CalculatorTDDExample

class CalculatorTDDExampleTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    func testSimpleDivideOperation() {
        let calculatorEngine: CalculatorEngine = CalculatorEngine()
        let value = calculatorEngine.divide(dividend: 10, divider: 2)
        
        XCTAssert(value == 5, "Test 01 - Simple Division Operation Failed")
        
    }
    
    

}
