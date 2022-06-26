//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Yuliya Ten on 26.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redColor: UILabel!
    @IBOutlet var greenColor: UILabel!
    @IBOutlet var blueColor: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColor.text = String(redSlider.value)
        greenColor.text = String(greenSlider.value)
        blueColor.text = String(blueSlider.value)
        
        colorView.layer.cornerRadius = 20
    }

    func changeColorView() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
    }
    
    @IBAction func redSliderAction() {
        redColor.text = String(format: "%.2f", redSlider.value)
        changeColorView()

}
    
    @IBAction func greenSliderAction() {
        greenColor.text = String(format: "%.2f", greenSlider.value)
        changeColorView()
    }
    
    @IBAction func blueSliderAction() {
        blueColor.text = String(format: "%.2f", blueSlider.value)
        changeColorView()
    }
    
   
}

