//
//  types.swift
//  CH12
//
//  Created by ucom Apple 13 on 2016/11/11.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

func showEmployee(e : Employee){
    //.....
}

class Person{
    var room :Room?
    deinit{  print("Person deinit")
    }

}
class Room{
    weak var person: Person?
    deinit{  print("Room deinit")
    }
}

class Employee{
    var name :String?
    var address : String?
    func personalInfo(){
        print("\(name ?? "XXX") lives in \(address ?? "XXX")")
    }
    init(name:String,address:String){
        self.name = name;
        self.address = address;
    }
    convenience init(name:String){
        self.init(name:name,address:"??")
    }
    deinit{
        print(" EMPLOYEE deallocated")
    }

    
    
}

class Manager :Employee{
    var department :String?
    override func personalInfo() {
        print("\(name ?? "XXX") is a manager of \(department ?? "XXX") lives in \(address ?? "XXX")")
    }
    //  一旦家了第三個參數 init() 與 convenience init(）都消失繼承
    init(name: String, address: String,dept :String) {
        super.init(name: name, address: address)
        self.address = address;
    }
    // override super designed init , convenence init() will also inhert
    override init(name: String, address: String) {
        super.init(name: name, address: address)
    }
    
    deinit{
        print(" MANAGER deallocated")
    }

}