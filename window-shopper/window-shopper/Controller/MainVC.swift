//
//  ViewController.swift
//  window-shopper
//
//  Created by Raymond Lopez on 9/7/17.
//  Copyright © 2017 OceanBiscuit. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtFeild!
    @IBOutlet weak var priceTxt: CurrencyTxtFeild!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcuBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcuBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcuBtn.setTitle("Calculate", for: .normal)
        calcuBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcuBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcuBtn
        priceTxt.inputAccessoryView = calcuBtn
        
        resultLabel.isHidden = true
        hourLabel.isHidden = true
        
    }

    @objc func calculate(){
        if let wageText = wageTxt.text, let priceText = priceTxt.text {
            if let wage = Double(wageText), let price = Double(priceText){
                view.endEditing(true)
                resultLabel.isHidden = false
                hourLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hourLabel.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
}


