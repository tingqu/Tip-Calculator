//
//  ViewController.swift
//  prework
//
//  Created by Ting Qu on 1/28/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmount: UITextField!
    
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalAmount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTips(_ sender: Any) {
        let bill = Double(billAmount.text!) ?? 0
        
        let tipPercentage = [0.15,0.18,0.20]
        
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        
        let total = tip + bill
        
        tipAmount.text = String(format: "$%.2f", tip)
        
        totalAmount.text = String(format: "$%.2f", total)
    
    }
    
}

