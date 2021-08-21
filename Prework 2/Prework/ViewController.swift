//
//  ViewController.swift
//  Prework
//
//  Created by Sai Theja Bikumalla on 8/18/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var TotalAmountLabel: UILabel!
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        TipAmountLabel.text = String(format: "$%.2f", tip)
        TotalAmountLabel.text = String(format: "$%.2f", total)
    }
}
