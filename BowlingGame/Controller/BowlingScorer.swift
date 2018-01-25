//
//  BowlingScorer.swift
//  BowlingGame
//
//  Created by Muhammad Fahied on 1/25/18.
//  Copyright © 2018 Muhammad Fahied. All rights reserved.
//

import Foundation

typealias Pin = Int


protocol FrameProtocol {
    var rolls:[Pin] {get set}
    var score:Int {get}
}

class Frame :FrameProtocol {
    //property to hold values for each rolls
    var rolls:[Pin] = Array(repeating: 0, count: 2)
    
    var score: Int {
        get {
            var total = 0
            rolls.forEach { pins in
                total += pins
            }
            return total
        }
    }
    
    var cummulativeScore: Int {
        
        get {
            
            return 0
        }
        
    }
}

struct BowlingScorer {
    
    var frames:[Frame]
    var currentRoll:Int
    
    init() {
        frames = [Frame]()
        currentRoll = 0
    }
    /*
     a frameNumber method that returns the number of the frame containing the
     ball about to be rolled;
     */
    func frameNumber() -> Int {
        
        return currentRoll / 2
    }
    
    /* a scoreSoFar method that returns the score in the game so far;*/
    func scoreSoFar() -> Int {
        var total = 0
        frames.forEach { frame in
            total += frame.score
        }
        return total
    }
    
    /* a gameIsOver method that returns true when the tenth frame has been
     scored and false otherwise, and which causes the next roll to start a new
     game;
     */
    func isGameOver() -> Bool {
        // game will be over once user have played all 20 rolls
        return currentRoll == 20
    }
    
    /* a roll method that, given the number of pins knocked down by a roll of the
     ball, returns an array whose length is the number of frames completely scored and whose contents are the cumulative scores for those frames.
     */
    mutating func roll(pins: Int) -> [Frame] {
        
        //find current roll the pin will be appended to
        let frameIndex = frameNumber()

        
        let newframe = currentRoll % 2 == 0
        if newframe {
            let frame =  Frame()
            frame.rolls[0] = pins
            frames.append(frame)
        } else {
            //get ref to old frame and add pin
            let frame = frames[frameIndex]
            frame.rolls[1] = pins
        }
        // incraese counter for current roll
        currentRoll += 1
        return frames
    }
    
}
