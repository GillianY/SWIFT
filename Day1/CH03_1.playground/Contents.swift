//: Playground - noun: a place where people can play
//Day1

import UIKit

var str = "Hello, playground";
let k : Int = 10;
var i :intmax_t = 17;

let `let` = 99;  //when use key word as varible name
var j: String = "1234";
print(j);
print(`let`);
print("\(k)  \(j)")
print(`let`,terminator:"\t")

var a,b,c:Double;
a=10.0
b=4.2
c=18.3

print("\(Int8.min) - \(Int8.max)")
print("\(UInt8.min) - \(UInt8.max)",terminator:"\t")

var str1 = "\(i)";

var i1 : Int = 1
var i2 : UInt = 2
var i3 = i1 + Int(i2)

var i4 : Double = 100
var i5 : Float = 200
var i6 = i4 + Double(i5)

var isCountinue :Bool = true;
var ch :Character = "A"
var ch1 = "A"  // auto , default is string
print (ch.dynamicType)
print (ch1.dynamicType)


typealias ColorCODE = UInt8
print("\(ColorCODE.min) - \(ColorCODE.max)")

//TUPLES
let data = (404,"NOT FOUND","Taipei");
print("\(data.0)")//array-like
let(name,_,_) = data;
print(name);

let userdata = (name:"Gina",age:26,address:"Taipei") //better
    //Dictionary <- IOS  map:java
    // often used in method output
print (userdata.name)
print(userdata.0)

//Optional
var r6 : Int? = 99;
print(r6)
print(r6!) // force
var r5 :Int? ;
print(r5) //會閃退
print(r6 != nil ? r6: -1)
print(r6 ?? -1) // nil -> -1
print(r5 ?? -1)
    //optional chaining   a?.b?.c()
    // if(a != nil) {
    //      if(a.b != nil){
    //          }}

let i7 = "12345t"
    //Cast1 :swift
var i8 = Int(i7)  // optional
print(i8.dynamicType)
print(i8 ?? -1)
    //cast2: fundation
var i9 = NSString(string: i7)
print(i9.integerValue) // same as javascript

let r7 = "a123"
let r8 = NSString(string:r7)
print(r8.integerValue)  // 0


var ui : String! = "Text"

