//
//  GameState.swift
//  RPS
//
//  Created by Andres Felipe Castellanos on 2/19/24.
//

import Foundation
import UIKit // to use UIColor



enum GameState {
    case Start
    case Win
    case Lose
    case Draw
    
    
    var status: String {
        switch self {
        case .Start:
            return "Rock, Paper, Scissors !  " // end return
        case .Win:
            return " You Won ! " // end return
        case .Lose:
            return " You Lose! " // end return
        case .Draw:
            return " Its a Draw ! "
            
        } // end switch
        
        
    } // end var status
    
    
    var color: UIColor {
        switch self {
        case .Start:
            return UIColor.blue
        case .Win:
            return UIColor.green
        case .Lose:
            return UIColor.red
        case .Draw:
            return UIColor.yellow
        } // end switch self
        
        
    } // end UIColor
    
} // end GameState enum





        
