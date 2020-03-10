//
//  SettingsVIewController.swift
//  UIStuff
//
//  Created by Jory Finewax on 2020-03-10.
//  Copyright © 2020 Jory Finewax. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController {
    
    
    
    @IBOutlet weak var appSlider: UISlider!
    
    @IBOutlet weak var showSliderValue: UILabel!
    
    
    @IBAction func ExitSettings(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func GameAudio(_ sender: Any) {
        showSliderValue.text = "\(appSlider.value)"
    }
}
