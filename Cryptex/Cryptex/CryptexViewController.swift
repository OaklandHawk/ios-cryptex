//
//  CryptexViewController.swift
//  Cryptex
//
//  Created by Taylor Lyles on 5/1/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import UIKit


class CryptexViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.picker.delegate = self
        self.picker.dataSource = self
        
        updatedViews()
    }
    
    var cryptexs: [[String]] = [[String]]()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // For the number of components, think about how you can figure out how many characters are in the `currentCryptex`'s password.
        return cryptexController.currentCryptex?.password.count ?? 0
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // For the number of rows, we want to show as many rows as there are letters.
        return letters.count
        
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // For the title of each row, we want to show the letter that corresponds to the row. i.e. row 0 should show "A", row 1 should show "B", etc.
        return letters[row]
    }
    
    func updatedViews() {
         label.text = cryptexController.currentCryptex?.hint
         picker.reloadAllComponents()
    }

    func hasMatchingPassword() -> Bool {
        for char in 
    }

    func reset() {

    }

    var letters = ["A", "B", "C", "D",
                   "E", "F", "G", "H",
                   "I", "J", "K", "L",
                   "M", "N", "O", "P",
                   "Q", "R", "S", "T",
                   "U", "V", "W", "X",
                   "Y", "Z"]
    
    var countdownTimer: Timer?
    var cryptexController = CryptexController()

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func unlockButton(_ sender: Any) {
    }
    

}
