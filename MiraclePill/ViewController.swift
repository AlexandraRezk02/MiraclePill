//
//  ViewController.swift
//  MiraclePill
//
//  Created by Sandra Rezk on 11/29/16.
//  Copyright © 2016 Sandra Rezk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var countyLabel: UILabel!
    @IBOutlet weak var countyTextBox: UITextField!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var quantityTextBox: UITextField!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York", "New Jersey", "Illinios", "Ohio", "Kansas", "North Carolina", "South Carolina", "Texas", "Washington"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countyLabel.isHidden = true
        countyTextBox.isHidden = true
        quantityLabel.isHidden = true
        quantityTextBox.isHidden = true
        buyNowBtn.isHidden = true
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countyLabel.isHidden = false
        countyTextBox.isHidden = false
        quantityLabel.isHidden = false
        quantityTextBox.isHidden = false
        buyNowBtn.isHidden = false
    }

}

