//
//  Sign.swift
//  RPS
//
//  Created by Andres Felipe Castellanos on 2/19/24.
//

import Foundation

// function that generates random numbers
func randomSign() -> Sign{
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return.rock
    } // end if return.rock
    else if sign == 1 {
return .paper
} // end return .paper
    else {
        return .scissors
    }
} // end randomSign



enum Sign{
    case rock
    case paper
    case scissors
    
    var emoji:String {
        switch self{
        case .rock:
            return " 🪨 "
        case .paper:
            return " 📃 "
        case .scissors:
            return " ✂️ "
        }
         // end emoji case
        
    }// end Sign case
    
    // function that determines the Rules inside of the game
    // using switch and case
    func determineGameState(against opponentSign: Sign) -> GameState {
        switch (self, opponentSign) {
        case (.rock, .scissors), (.scissors, .paper), (.paper, .rock):
            return .Win
        case (.rock, .paper), (.paper, .scissors), (.scissors, .rock):
            return .Lose
        case (.rock, .rock), (.scissors, .scissors), (.paper, .paper):
            return .Draw
        } // end func DetermineGameState
        
        
        
    }
    
    
    
    
} // end Enum sign



