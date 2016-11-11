//
//  main.swift
//  CH11
//
//  Created by ucom Apple 13 on 2016/11/11.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

print("Hello, World!")


var e = Employee(name: "Gina", address: "Paris")
//e.name = "Gina"
//e1.address = "Milan"
//e1.personalInfo() //actually Manager() run
let m1 = Manager(name: "Gillian", address: "Milan")

m1.personalInfo();
var e2 = Manager(name: "Gina", address: "Paris",dept:"Barcelona")
e2.personalInfo();
var e3 = Manager(name: "Bergamo")
e3.personalInfo();
//case01
if e is Manager{
    let m = e as! Manager
    m.department = "Sale"
}

e.personalInfo() //actually Manager() run

var e4 : Employee? = Manager(name: "Bergamo")
e4 = nil



var p : Person? = Person()
var r : Room? = Room()
p?.room = r
r?.person = p
r = nil
p = nil

print("main end")

