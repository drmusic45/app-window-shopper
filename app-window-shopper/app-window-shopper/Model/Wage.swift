//
//  Wage.swift
//  app-window-shopper
//
//  Created by mobilestudio on 3/26/18.
//  Copyright © 2018 mobilestudio. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
     return Int(ceil(price / wage))
    }
}
