//
//  main.swift
//  ch10Self
//
//  Created by ucom Apple 13 on 2016/11/10.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

print("Hello, World!")

let S = Superman.sharedSuperman()
//let S1 = Superman()

let school = School()
let s1 = school.getStudentBYID("STD001")
school.setStudentBYID("STD002", std: s1!)
let s2 = school.getStudentByName("Gina", "Y")


//subscript
let s3 = school["STD003"]
school["STD004"] = s1
let s4 = school["Gina","Y"]






