//
//  Block.swift
//  Swiftris
//
//  Created by Adrian Knapp on 2/14/16.
//  Copyright © 2016 PIGStudio. All rights reserved.
//

import SpriteKit

let NumberOfColors: UInt32 = 6

enum BlockColor: Int, CustomStringConvertible {
    
    // #3
    case Blue = 0, Orange, Purple, Red, Teal, Yellow
    
    // #4
    var spriteName: String {
        switch self {
        case .Blue:
            return "blue"
        case .Orange:
            return "orange"
        case .Purple:
            return "purple"
        case .Red:
            return "red"
        case .Teal:
            return "teal"
        case .Yellow:
            return "yellow"
        }
    }
    
    // #5
    var description: String {
        return self.spriteName
    }
    
    // #6
    static func random() -> BlockColor {
        return BlockColor(rawValue:Int(arc4random_uniform(NumberOfColors)))!
    }
}