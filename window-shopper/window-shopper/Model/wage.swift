//
//  wage.swift
//  window-shopper
//
//  Created by Raymond Lopez on 9/8/17.
//  Copyright © 2017 OceanBiscuit. All rights reserved.
//

import Foundation


class Wage {
    class func getHours (forWage wage : Double, andPrice price: Double) -> Int{
        return Int(ceil(price / wage))
    }
    
}
