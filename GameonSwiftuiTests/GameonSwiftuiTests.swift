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
    
    func testExample() throws {
        XCTAssertEqual(game.points(sldierValue: 50), 999)
    }
    
    func testScorePositive() {
        var guess = game.target + 5
        var score = game.points(sldierValue: guess)
        XCTAssertEqual(score, 95)
    }
    func testScoreNegative() {
        var guess = game.target  - 5
        var score = game.points(sldierValue: guess)
        XCTAssertEqual(score, 95)
    }
}
