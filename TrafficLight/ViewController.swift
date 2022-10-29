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
        
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.height / 2
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        startButton.layer.cornerRadius = 20
        setColorTrafficLight(green: false, yellow: false, red: false)
    }
    
    @IBAction func nextButton() {
        startButton.setTitle("NEXT", for: .normal)
        switchTrafficLight()

        switch stateTrafficLight {
        case 1:
            setColorTrafficLight(green: true, yellow: false, red: false)
        case 2:
            setColorTrafficLight(green: false, yellow: true, red: false)
        case 3:
            setColorTrafficLight(green: false, yellow: false, red: true)
        default:
            setColorTrafficLight(green: false, yellow: false, red: false)
        }
    }

    private func switchTrafficLight() {
        self.stateTrafficLight = stateTrafficLight < 3 ? stateTrafficLight + 1 : 1
    }

    private func setColorTrafficLight(green: Bool, yellow: Bool, red: Bool) {
        greenLightView.alpha = green ? 1.0 : 0.3
        yellowLightView.alpha = yellow ? 1.0 : 0.3
        redLightView.alpha = red ? 1.0 : 0.3
    }
}
