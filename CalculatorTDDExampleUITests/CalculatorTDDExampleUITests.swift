//
//  CalculatorTDDExampleUITests.swift
//  CalculatorTDDExampleUITests
//
//  Created by Marcos Molero on 27/11/2018.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import XCTest

class CalculatorTDDExampleUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testUIDivideOperation() {
        let app = XCUIApplication()
        
        let dividendTextField = app.textFields.matching(identifier: "dividendTextField").element
        let dividerTextField = app.textFields.matching(identifier: "dividerTextField").element
        
        dividendTextField.tap()
        dividendTextField.typeText("20")
        dividerTextField.tap()
        dividerTextField.typeText("5")
        
        let divideButton = app.buttons.matching(identifier: "divideButton").element
        divideButton.tap()
        
        let resultLabel = app.staticTexts.matching(identifier: "resultLabel").element
        resultLabel.tap()
        
        XCTAssertEqual(resultLabel.label, "4", "Test UI 01 - Divide Operation Failed")
    }

}
