//
//  CurrencyTctFeild.swift
//  window-shopper
//
//  Created by Raymond Lopez on 9/7/17.
//  Copyright © 2017 OceanBiscuit. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtFeild: UITextField {

    
    override func prepareForInterfaceBuilder() {
        customizeView()
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        }
        
    }
    
}

