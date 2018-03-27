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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        print("It works!")
    }

    


}

