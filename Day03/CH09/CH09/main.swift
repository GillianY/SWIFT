//
//  main.swift
//  CH09
//
//  Created by ucom Apple 13 on 2016/11/10.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

//print("Hello, World!")

let o1 = Order()
print(o1.totalPrice)
o1.totalPrice = 1000
print(o1.amount)
print(Account.rate)
Account.rate = 0.06
print(Account.rate)

//through : include
//for num in stride(from: 9, through: 1, by: -2) {
//    print(num)
//}   //output: 97531
//
//for num in stride(from: 9, to: 1, by: -2) {
//    print(num)
//}   //output: 9753

var score = 65

switch score {
case 0..<60:    "E"
case 60..<70:   "D" //output: "D"
case 70..<80:   "C"
case 80..<90:   "B"
case 90...100:  "A"
default:        "?"
}
