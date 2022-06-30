//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Yuliya Ten on 26.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        
        colorView.layer.cornerRadius = 15
        setColor()
        setValue(for: redLabel, greenLabel, blueLabel)
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        switch sender {
        case redLabel:
            redLabel.text = setName(from: redSlider)
        case greenLabel:
            greenLabel.text = setName(from: greenSlider)
        default:
            blueLabel.text = setName(from: blueSlider)
        }
        
    }
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redLabel:
                redLabel.text = setName(from: redSlider)
            case greenLabel:
                greenLabel.text = setName(from: greenSlider)
            default:
                blueLabel.text = setName(from: blueSlider)
            }
        }
    }
    
    private func setName(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

