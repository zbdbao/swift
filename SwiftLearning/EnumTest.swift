//
//  EnumTest.swift
//  SwiftLearning
//
//  Created by icom on 17/12/15.
//  Copyright © 2015 icom. All rights reserved.
//

import Foundation

enum Gendar:Int{
    
    case MALE=2,
    FEMAL=1,
    SECRET=0
}

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}