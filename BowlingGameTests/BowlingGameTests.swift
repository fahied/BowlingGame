//
//  BowlingGameTests.swift
//  BowlingGameTests
//
//  Created by Muhammad Fahied on 1/25/18.
//  Copyright © 2018 Muhammad Fahied. All rights reserved.
//

import XCTest
@testable import BowlingGame

class BowlingGameTests: XCTestCase {
    
    var game = BowlingScorer()
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAllZero() {

        // roll the ball 20 times and then see what is cummulative score
        for _ in 0..<20 {
            _ = game.roll(pins: 0)
            
        }
        let expecting = 0 //score
        let resutl = game.scoreSoFar()
        XCTAssert(resutl == expecting, "result: \(resutl), expecting: \(expecting)")
    }

    func testAllOnes() {
        
        // roll the ball 20 times and then see what is cummulative score
        for _ in 0..<20 {
            _ = game.roll(pins: 1)
            
        }
        let expecting = 20 //score
        let resutl = game.scoreSoFar()
        XCTAssert(resutl == expecting, "result: \(resutl), expecting: \(expecting)")
    }

    
    func testRandom1() {
        
        // roll the ball 20 times and then see what is cummulative score
        
        let rolls = [2,3,4];
        
        rolls.forEach { (pins) in
            _ = game.roll(pins: pins)
        }
        let expecting = 9 //score
        let resutl = game.scoreSoFar()
        XCTAssert(resutl == expecting, "result: \(resutl), expecting: \(expecting)")
    }

    
    
    func testRandom2() {
        
        // roll the ball 20 times and then see what is cummulative score
        
        let rolls = [2,3,4,6,3,2,1];
        
        rolls.forEach { (pins) in
            _ = game.roll(pins: pins)
        }
        let expecting = 21 //score
        let resutl = game.scoreSoFar()
        XCTAssert(resutl == expecting, "result: \(resutl), expecting: \(expecting)")
    }
    
    
    func testGameOverFailed() {
        
        // roll the ball 20 times and then see what is cummulative score
        
        let rolls = [2,3,4];
        
        rolls.forEach { (pins) in
            _ = game.roll(pins: pins)
        }
        let resutl = game.isGameOver()
        XCTAssert(resutl == false, "result: \(resutl), expecting: \(false)")
    }

    
    func testGameOver() {
        
        // roll the ball 20 times and then see what is cummulative score
        
        // roll the ball 20 times and then see what is cummulative score
        for _ in 0..<20 {
            _ = game.roll(pins: 1)
            
        }
        let resutl = game.isGameOver()
        XCTAssert(resutl == true, "result: \(resutl), expecting: \(true)")
    }
    
    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
    
}
