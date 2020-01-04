//
//  EarlGreyTests.swift
//  EarlGreyTests
//
//  Created by Risen on 04/01/2020.
//  Copyright © 2020 Sergei S. All rights reserved.
//

import XCTest
import EarlGrey

class EarlGreyTests: XCTestCase {
    
    
    //this application was opened
    func testPresenceOfKeyWindow(){
         EarlGrey.selectElement(with: grey_keyWindow())
        .assert(grey_sufficientlyVisible())
        EarlGrey.selectElement(with: grey_accessibilityID("1"))
        .perform(grey_tap())
        EarlGrey.selectElement(with: grey_accessibilityID("2"))
            .perform(grey_tap())
        EarlGrey.selectElement(with: grey_accessibilityID("3"))
            .perform(grey_tap())
        EarlGrey.selectElement(with: grey_accessibilityID("+"))
            .perform(grey_tap())
        EarlGrey.selectElement(with: grey_accessibilityID("1"))
            .perform(grey_tap())
        EarlGrey.selectElement(with: grey_accessibilityID("2"))
            .perform(grey_tap())
        EarlGrey.selectElement(with: grey_accessibilityID("3"))
            .perform(grey_tap())
        EarlGrey.selectElement(with: grey_accessibilityID("="))
            .perform(grey_tap())
        
    }

//    override func setUp() {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
