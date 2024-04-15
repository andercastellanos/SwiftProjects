//
//  OrangeViewController.swift
//  RainbowTabs
//
//  Created by Andres Felipe Castellanos on 4/15/24.
//

import UIKit

class OrangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tabBarItem.badgeValue = "!"
    }
        
        override func viewWillDisappear(_ animated: Bool)
    
    
    {    super.viewWillDisappear(animated)
        tabBarItem.badgeValue = nil
    } // end super
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
