//
//  ViewController.swift
//  practice1
//
//  Created by Admin on 09/06/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celcioslabal: UILabel!
    @IBOutlet weak var faringate: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            
            
        }
    }
    
    @IBAction func slederValuechange(_ sender: UISlider){
        let temperature = Int(round(sender.value))
        celcioslabal.text = "\(temperature)"
        let faringatetemperarure = (sender.value * 9/5) + 32
        faringate.text = "\(faringatetemperarure)"
    }
}

