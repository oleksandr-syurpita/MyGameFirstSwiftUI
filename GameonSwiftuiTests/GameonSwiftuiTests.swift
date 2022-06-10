//
//  GameonSwiftuiTests.swift
//  GameonSwiftuiTests
//
//  Created by admin on 09.06.2022.
//

import XCTest
@testable import GameonSwiftui
class GameonSwiftuiTests: XCTestCase {
    
    var game: Game!
    
    override func setUpWithError() throws {
        game = Game()
    }
    
    override func tearDownWithError() throws {
        
        game = nil
    }
    
    
    func testScorePositive() {
        let guess = game.target + 5
        let score = game.points(sldierValue: guess)
        XCTAssertEqual(score, 95)
    }
    func testScoreNegative() {
        let guess = game.target  - 5
        let score = game.points(sldierValue: guess)
        XCTAssertEqual(score, 95)
    }
}
