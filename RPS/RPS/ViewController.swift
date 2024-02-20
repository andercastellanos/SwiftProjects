//
//  ViewController.swift
//  RPS
//
//  Created by Andres Felipe Castellanos on 2/19/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signLabel: UILabel!
    
    
    @IBOutlet weak var statusLabel: UILabel!
    
    
    
    @IBOutlet weak var rockButton: UIButton!
    
    
    @IBOutlet weak var paperButton: UIButton!
    
    
    @IBOutlet weak var scissorsButton: UIButton!
    
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBAction func rockChosen(_ sender: Any) {
        
        play(userSign: .rock)
        
    } // action button for rock
    
    @IBAction func paperChosen(_ sender: Any) {
        
        play(userSign: .paper)
        
    } // action button for paper
    
    @IBAction func scissorsChosen(_ sender: Any) {
        
        play(userSign: .scissors)
        
    } // action button for scissor
    
    
    @IBAction func playAgain(_ sender: Any) {
        
        updateUI(forState: .Start)
        
    } // action button for play again
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI(forState: .Start)
        
        
        
    }// end func viewDidLoad

    func updateUI (forState state:GameState){
        statusLabel.text = state.status
        switch state {
        case .Start:
            view.backgroundColor = .gray
            signLabel.text = " 🤖 "
            playAgainButton.isHidden = true
            rockButton.isHidden = false
            paperButton.isHidden = false
            scissorsButton.isHidden = false
            
            rockButton.isEnabled = true
            paperButton.isEnabled = true
            scissorsButton.isEnabled = true
            
            
        case .Win:
            view.backgroundColor = state.color
        case .Lose:
            view.backgroundColor = state.color
        case .Draw:
            view.backgroundColor = state.color
        }// end switch state
        
    }// end updateUi
    
    func play(userSign: Sign){
        let computerSign = randomSign()
        
        let gameState = userSign.determineGameState(against: computerSign)
        updateUI(forState: gameState)
        signLabel.text = computerSign.emoji
        
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        
        rockButton.isHidden = true
        paperButton.isHidden = true
        scissorsButton.isHidden = true
        
        playAgainButton.isHidden = false
        
        switch userSign{
        case .rock:
            rockButton.isHidden = false
        case .paper:
            paperButton.isHidden = false
        case .scissors:
            scissorsButton.isHidden = false
        }// end switch
        
    }// end func play
    
}// end UIViewController

