//
//  main.swift
//  CH06_func
//
//  Created by ucom Apple 13 on 2016/11/4.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

//print("Hello, World!")
print(sayHi());
print(sayHiTo("Gina"));
print(test(PersonName: "Gillian"));
print(sayHiToWithGreeting(personname: "Aaron", greeting: "good nighgt"))
//print(sayHiToWithGreeting(_: "Aaron", greeting: "good nighgt"))

print(test0(personName: "Giilian",greeting:""))
print(sayHiToWithGreeting2(personname: "Gary")) // with default value
print(sayHiToWithGreeting3())

//oeverloading .....
print("=====oeverloading .....=====")
print(sum(3,2))
print("!!!!")
sum(1,2)
sum(2,4,5,100,3,6,9)

var idx = 100;
var idx2 = 200;
test001(idx)  //2
print(idx) //1

//call by address
print("call by addess")
test003(test1: &idx , test2: &idx2)
print(idx);
print(idx2)


