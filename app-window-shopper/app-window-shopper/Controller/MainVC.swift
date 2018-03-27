//
//  ViewController.swift
//  app-window-shopper
//
//  Created by mobilestudio on 3/26/18.
//  Copyright © 2018 mobilestudio. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var hourlyWageTextField: CurrencyTextField!
    @IBOutlet weak var itemPriceTextField: CurrencyTextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        hourlyWageTextField.inputAccessoryView = calcBtn
        itemPriceTextField.inputAccessoryView = calcBtn
    }
    
    //The #selector part of calcBtn.addTarget is part of Objective-C and thus in Swift this function must have @objc before it
    @objc func calculate() {
        if let wageText = hourlyWageTextField.text, let priceText = itemPriceTextField.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        hourlyWageTextField.text = ""
        itemPriceTextField.text = ""
    }
    


}

