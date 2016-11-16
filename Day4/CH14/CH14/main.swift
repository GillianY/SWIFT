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

var hi : ()->() = closure01
hi()
//hi(name:"Grace", greeting:"Salut!")

var h2 :(String,String)->() = closure01
h2("Lucy","Ciao")

var h3 = { (name:String , greeting:String)->() in
    print(" \(greeting) ,\(name) ") }

h3("Bella","Ciao !" ) // not need  : name:"Bella"

func repeatf(Counter:Int, action:()->() )
{
    for _ in 1...Counter{
        action()
    }
}

repeatf( 3 , action:{ ()->() in  print("Bonjour") })
repeatf(3){ print("_Bonjour")}


func repeatf2(Counter:Int, action:(Int,String)->String )
{
    for i in 1...Counter{
        action(i,"John")
    }
}

var a = repeatf2(3, action:{(index:Int,name:String)->String in return "=\(index) Ciao ,\(name) " })
print("1: \(a)")

a = repeatf2(3){ (index:Int,greeting:String)->String in  return "_\(index) Ciao ,\(greeting) " }

print("2: \(a)")

a = repeatf2(3){ (index,name) in  return "__\(index) Ciao ,\(name) " }

print("3: \(a)")

a = repeatf2(3){return "_第\($0) 次： \($1)"}
print("4: \(a)")

a = repeatf2(3){"__第\($0) 次： \($1)"}
print("5: \(a)")




