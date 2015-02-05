//
//  ViewController.swift
//  FCAnimation
//
//  Created by Kenichi Saito on 2/5/15.
//  Copyright (c) 2015 FarConnection. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var animateView: UIView!
    @IBOutlet weak var animationTypePicker: UIPickerView!
    
    let types: Dictionary<String, FCAnimation.FCAnimationType> = [
        "BounceLeft": .BounceLeft,
        "BounceRight": .BounceRight,
        "BounceUp": .BounceUp,
        "BounceDown": .BounceDown,
        "FadeIn": .FadeIn,
        "FadeOut": .FadeOut,
        "ZoomIn": .ZoomIn,
        "ZoomOut": .ZoomOut,
        "Pop": .Pop,
        "Stretch": .Stretch,
        "Shake": .Shake
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        animateView.layer.cornerRadius = 50
        animationTypePicker.delegate = self
        animationTypePicker.dataSource = self
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 11
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return types.keys.array[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        FCAnimation().performAnimation(animateView, duration: 0.4, delay: 0, type: types[types.keys.array[row]]!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

