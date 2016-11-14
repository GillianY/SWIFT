//
//  main.swift
//  CH14 : Closure
//
//  Created by ucom Apple 13 on 2016/11/11.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

UInt(3).times{() in print("Hello Gina :) ")}



//closure
//https://hugolu.gitbooks.io/learn-swift/content/Basic/Closure.html
func closure01()->(){
    print("hello, Gina")
}

func closure01(name:String , greeting:String)->(){
    print(" \(greeting) ,\(name) ")
}

//closure1 :

//var hi = closure01  // ???
//hi()
//hi(name:"Grace", greeting:"Salut!")

var h2 = { (name:String , greeting:String)->() in
    print(" \(greeting) ,\(name) ") }

h2("Bella","Ciao !" ) // not need  : name:(Bella)


