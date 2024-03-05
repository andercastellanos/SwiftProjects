//
//  ViewController.swift
//  ColorPicker
//
//  Created by Andres Felipe Castellanos on 2/20/24.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func switchChanged(_ sender: UISwitch) {
    
        updateColor()
        updateControls()
 
        
        
    } // end switch Changed
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    // end switch
    
    
    @IBOutlet weak var redSlider: UISlider!
    
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    
    
    
    
    @IBAction func reset(_ sender: Any) {
        
        
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        updateColor()
        
        updateControls()
    }
    
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Border
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor =
           UIColor.black.cgColor
       
        
        
        
        
        
      updateColor()
        updateControls()
    
    } // end view did load

    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            //red = 1
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
           // green = 1
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            //blue = 1
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green,
           blue: blue, alpha: 1)
        colorView.backgroundColor = color
        
    }// end update color
    
    
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    

 
                            
   
    
    
    
}// end UIViewController

