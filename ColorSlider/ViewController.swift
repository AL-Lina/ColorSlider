//
//  ViewController.swift
//  ColorSlider
//
//  Created by Alina Sokolova on 12.12.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var valueOfFirstSlider: UILabel!
    @IBOutlet weak var valueOfSecondSlider: UILabel!
    @IBOutlet weak var valueOfThirdSlider: UILabel!
    @IBOutlet weak var firstSlider: UISlider!
    @IBOutlet weak var secondSlider: UISlider!
    @IBOutlet weak var thirdSlider: UISlider!
    @IBOutlet weak var viewChangingColor: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstSlider.minimumTrackTintColor = .red
        secondSlider.minimumTrackTintColor = .green
        thirdSlider.minimumTrackTintColor = .blue
        viewChangingColor.alpha = 0.7
    }
    @IBAction func firstSliderAction() {
        let firstSliderValue = CGFloat(firstSlider.value)
        valueOfFirstSlider.text = String(format: "%.2f", firstSliderValue)
        viewChangingColor.backgroundColor = UIColor(red: firstSliderValue, green: 0, blue: 0, alpha: 1)
    }
    
    @IBAction func secondSliderAction() {
        let secondSliderValue = CGFloat(secondSlider.value)
        valueOfSecondSlider.text = String(format: "%.2f", secondSliderValue)
        viewChangingColor.backgroundColor = UIColor(red: 0, green: secondSliderValue, blue: 0, alpha: 1)
    }
    
    @IBAction func thirdSliderAction() {
        let thirdSliderValue = CGFloat(thirdSlider.value)
        valueOfThirdSlider.text = String(format: "%.2f", thirdSliderValue)
        viewChangingColor.backgroundColor = UIColor(red: 0, green: 0, blue: thirdSliderValue, alpha: 1)
}

        }
