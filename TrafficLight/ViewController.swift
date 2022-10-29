//
//  ViewController.swift
//  TrafficLight
//
//  Created by Ирина on 29.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var redLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    var stateTrafficLight = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greenLightView.layer.cornerRadius = 75
        yellowLightView.layer.cornerRadius = 75
        redLightView.layer.cornerRadius = 75
        startButton.layer.cornerRadius = 10
        greenLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        redLightView.alpha = 0.3
    }

    @IBAction func nextButton() {
        startButton.setTitle("NEXT", for: .normal)
        stateTrafficLight = switchTrafficLight(state: stateTrafficLight)
        
        switch stateTrafficLight {
        case 1:
            greenLightView.alpha = 1.0
            yellowLightView.alpha = 0.3
            redLightView.alpha = 0.3
        case 2:
            greenLightView.alpha = 0.3
            yellowLightView.alpha = 1.0
            redLightView.alpha = 0.3
        case 3:
            greenLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            redLightView.alpha = 1.0
        default:
            greenLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            redLightView.alpha = 0.3
        }
    }
    
    private func switchTrafficLight(state: Int) -> Int {
        var stateTrafficLight = state + 1
        if stateTrafficLight == 4 {
            stateTrafficLight = 1
        }
        return stateTrafficLight
    }
}

