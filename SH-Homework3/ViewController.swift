//
//  ViewController.swift
//  SH-Homework3
//
//  Created by Sam Hartman on 2/15/20.
//  Copyright © 2020 Sam Hartman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var horseView: UIImageView!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var sign: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func goneFishin(_ sender: Any) {
        if (button.isSelected)
        {
            sign.isHidden = true
        }else{
            sign.isHidden = false
        }
    }
    
    
    @IBAction func toggleButton(_ sender: Any)
    {
        if (horseView.isAnimating)
        {
            horseView.stopAnimating()
        } else
        {
            horseView.startAnimating()
        }
    }
    
    @IBAction func setSpeed(_ sender: Any)
    { horseView.animationDuration=TimeInterval(3.0-speedSlider.value)
        horseView.startAnimating()
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let hopAnimation: [UIImage] = [
            UIImage(named: "horse1")!,
            UIImage(named: "horse2")!,
            UIImage(named: "horse3")!,
            UIImage(named: "horse4")!,
            UIImage(named: "horse5")!,
            UIImage(named: "horse6")!,
            UIImage(named: "horse7")!,
            UIImage(named: "horse8")!,
            UIImage(named: "horse9")!,
            UIImage(named: "horse10")!,
            ]
    horseView.animationImages=hopAnimation
        horseView.animationDuration=1.0
    }
}

