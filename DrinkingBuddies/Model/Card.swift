//
//  Card.swift
//  DrinkingBuddies
//
//  Created by Jeremy Manlangit on 9/9/24.
//

import Foundation

enum SuitColor: Codable {
    case red, black
}

enum CardSuit: Codable {
    case diamonds, hearts, spades, clubs
    
    var color: SuitColor {
        switch self {
        case .diamonds, .hearts:
                .red
        case .spades, .clubs:
                .black
        }
    }
}

enum CardValue: Codable {
    case ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
    
    var int: Int {
        switch self {
        case .ace:
            14
        case .two:
            2
        case .three:
            3
        case .four:
            4
        case .five:
            5
        case .six:
            6
        case .seven:
            7
        case .eight:
            8
        case .nine:
            9
        case .ten:
            10
        case .jack:
            11
        case .queen:
            12
        case .king:
            13
        }
    }
}

struct Card: Codable {
    var value: CardValue
    var suit: CardSuit
    var color: SuitColor { return suit.color}
}
