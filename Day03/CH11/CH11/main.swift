//
//  main.swift
//  CH11
//
//  Created by ucom Apple 13 on 2016/11/11.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

print("Hello, World!")


var e1 = Employee()
e1.name = "Gina"
e1.address = "Milan"
e1.personalInfo() //actually Manager() run

var m1 = Manager()
m1.name = "Gina"
m1.address = "Milan"
m1.department = "Design"
m1.personalInfo()

var e : Employee = Manager()
e.name = "Gina"
e.address = "Milan"

//case01
if e is Manager{
    let m = e as! Manager
    m.department = "Sale"
}

//case2

let mm = e as? Manager
mm?.department = "Marketing" // optional chaining

e.personalInfo() //actually Manager() run

