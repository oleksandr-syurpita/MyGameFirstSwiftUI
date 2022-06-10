//
//  Game.swift
//  GameonSwiftui
//
//  Created by admin on 09.06.2022.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sldierValue: Int) -> Int {
//        var difference: Int
//        if sldierValue > self.target {
//            difference = sldierValue - self.target
//        }else if self.target > sldierValue {
//            difference = self.target -  sldierValue
//        }else {
//             difference = 0
//        }
         100 - abs(self.target - sldierValue)
    }
}
