//
//  ViewController.swift
//  CS064-2
//
//  Created by APPLE on 07/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var BackgroundView: UIView!
    @IBOutlet weak var CelciusTextField: UITextField!
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func ConvertButton(_ sender: UIButton) {
        
        var celcius:Double = Double(CelciusTextField.text!)!
        var fahrenheit = celcius*9/5 + 32
        ResultLabel.text = "RESULT: " + String(fahrenheit) + " F"
        BackgroundView.backgroundColor=UIColor.orange
    }
    
    
    @IBAction func ClearButton(_ sender: UIButton) {
    
        ResultLabel.text = "CONVERT TO FAHRENHEIT"
        CelciusTextField.text?.removeAll()
        BackgroundView.backgroundColor=UIColor.systemTeal
    }
    
}

