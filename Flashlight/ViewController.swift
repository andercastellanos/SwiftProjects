//
//  ViewController.swift
//  Light
//
//  Created by Andres Felipe Castellanos on 3/5/24.
//

import UIKit

class ViewController: UIViewController {

    
    var lightOn = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    fileprivate func updatedUI() {
        if lightOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black // cases in a enum
        }
    }
    
    @IBAction func ButtonPressed(_ sender: Any) {
      
        lightOn.toggle()
        updatedUI() // end else
    } // end Button Pressed
    
}

