//
//  BowlingFrameTests.swift
//  BowlingGameTests
//
//  Created by Muhammad Fahied on 1/25/18.
//  Copyright © 2018 Muhammad Fahied. All rights reserved.
//

import XCTest
@testable import BowlingGame


class BowlingFrameTests: XCTestCase {
    
    let frame = Frame()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFrameScore() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        frame.rolls[0] = 1
        frame.rolls[1] = 2
        
        let expectedScore = 3
        let result = frame.score
        
        XCTAssert(result == expectedScore, "result: \(result), expecting: \(expectedScore)")
        
    }
    
}
