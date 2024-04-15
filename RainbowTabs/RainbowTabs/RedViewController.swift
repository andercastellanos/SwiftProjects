//
//  ViewController.swift
//  RainbowTabs
//
//  Created by Andres Felipe Castellanos on 4/15/24.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabBarItem.badgeValue = "!"
    }
        
        override func viewWillDisappear(_ animated: Bool) 
    
    
    {    super.viewWillDisappear(animated)
        tabBarItem.badgeValue = nil
    } // end super
    
    
    
    }// end




