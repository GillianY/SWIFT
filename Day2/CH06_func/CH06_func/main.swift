//
//  main.swift
//  CH06_func
//
//  Created by ucom Apple 13 on 2016/11/4.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

//@Gillian@20161104 Swift Day2

import Foundation

//print("Hello, World!")
print(sayHi());
print(sayHiTo("Gina"));
print(test(PersonName: "Gillian"));
print(sayHiToWithGreeting(personname: "Aaron", greeting: "good nighgt"))
//print(sayHiToWithGreeting(_: "Aaron", greeting: "good nighgt"))

print(test0(personName: "Gillian",greeting:""))
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
test001(idx)  //2 //105
print(idx) //1   //100

//call by address
print("call by addess")
test003(test1: &idx , test2: &idx2)
print(idx);
print(idx2)


//function type
var myFun : (Int,Int)->() = m1
myFun(1,2) // add
myFun = m2
myFun(1,2)  //*

var getPrice : (Int, Int)-> Int? = PrcieCompany1 ;
// print(getPrice(120) ?? -10)                          // why not
print(getPrice(120,20)!)  // if no ！： optional

getPrice = PrcieCompany2
print(getPrice(120,20)!) //if no ！： optional

print("===========")
processLogic(PrcieCompany1,100,10) //if java poly 多型 : stretagy pattern
processLogic(PrcieCompany2,100,10)

//6-33
//case1
var currentValue = 8
func gotoZero(cv:Int) -> Int{ // chooseStepFunction
    if cv>0{ //backward
        return cv - 1 //stepBackward
    }else{
        return cv + 1 //stepForward
    }
}
while currentValue != 0{
    currentValue = gotoZero(currentValue)
    print(currentValue)
}

print("=========")


//nested function   java doesn't have nested func, but can put inner class inside
var currentValue2 = -12
func stepForward(i :Int)->Int{
       return i+1
}
func stepBackward(i:Int)->Int{
        return i-1
}

func chooseStepFunction(backwards: Bool)-> (Int) -> Int{ // chooseStepFunction
    return backwards ? stepBackward:stepForward  ;
}

let moveToZero = chooseStepFunction( currentValue2 > 0)
while currentValue2 != 0 {
    currentValue2 = moveToZero(currentValue2)
    print("\(currentValue2)")
}

var currentValue3 = 10
var i = 1

func addV(j:Int,_ k:Int)->Int
{   return j+k
}
func minV(j:Int,_ k:Int)->Int
{ return j-k
}

func gohead(istrue:Bool)-> (Int,Int)->Int{
    print("hi ",terminator:"")
    return istrue ? addV : minV
}

let getInto = gohead( currentValue3 > 10 )
for l in 1...3 {
    currentValue3 = getInto(currentValue3, 12)
    print(getInto)
} //???

print("------Closure------")
let names = ["Chris3","Alex2","Eric","Betty222","Dio"]
print(names.sort())
func reverseOrder(s1: String, s2:String)->Bool {
    return s1 > s2 // default : nature sort s1<s2 ...
}

// let reversed = names.sort(reverseOrder) //custom logic

//let reversed = names.sort({(s1: String, s2:String)->Bool in
//    return s1 > s2 // default : nature sort s1<s2 ...
//})


//let reversed = names.sort({(s1, s2) in return  s1 > s2 // default : nature sort s1<s2 ...
//})
//
//print(reversed)
//

//let reversed = names.sort{ return $0 < $1 };
let reversed = names.sort(<); // why ??


print(reversed)


