//
//  types.swift
//  CH09
//
//  Created by ucom Apple 13 on 2016/11/10.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

class Account{
    static var rate = 0.02
}

class Order{
    var unitPrice = 10
    var amount = 20{
       
        willSet {  print("\(amount) ,new Value: \(newValue)")
        }
        didSet{ print("\(amount) ,old Value:\(oldValue)")
        }
    }
    var totalPrice : Int{ // computed type // 隱藏性的setter getter
        get{
            return unitPrice * amount
        }
        set{ //optional
            amount = newValue / unitPrice
        }
    }    
}
