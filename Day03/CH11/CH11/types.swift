//
//  types.swift
//  CH11
//
//  Created by ucom Apple 13 on 2016/11/11.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

func showEmployee(e : Employee){
    //.....
}

class Employee{
    var name :String?
    var address : String?
    func personalInfo(){
        print("\(name ?? "XXX") lives in \(address ?? "XXX")")
    }
}

class Manager :Employee{
    var department :String?
    override func personalInfo() {
         print("\(name ?? "XXX") is a manager of \(department ?? "XXX") lives in \(address ?? "XXX")")
    }
}