//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var i = 0
    i += 2
print(pow(2.0 , 3.0)) // 8
print(arc4random()) // Int32
print ( 2 ^ 0 ) // self //XOR
print( 2 ^ 2) //0
 //excution or

var a = 2;
var b = 4;
var c = a;
a=b;
b=c;
print("\(a) \(b)",terminator:"\t")


var a2  = 5; // dwfault :int
var a1  = 5.0 ;
print(a2.dynamicType)
print(a1.dynamicType)

print(8<<2) // pow(2,3) -> pow(2,5)
print(8>>2)  //pow(2,3) -> pow(2,1)

//can only use in int
var i21 = 1
var i22 = 7
i21 = i21^i22
i22 = i21^i22
i21 = i21^i22

var imax = Int32.max
imax = imax &+ 1 //sign bit 
//* >> %
var t = 2 + (6 / 3 * 2);
var t2 = 2 + (2 * 6 % 3);//2!
var t3 = 1 + 2 ;

if (t > 0) {  print("hello",terminator:"\t") }

let point=(1,0)
switch point{
case (0,0):
    print();
case(let x,0):
    print("x: \(x)",terminator:"");
case let(x,y) where x == y:
    print ("arbitrary point")
default:
    print("test")
}

for _ in 1...5
{ print("hi") }

//let str = "1234567"

for i in 1...6
{print(i)}



for i in 1...100 {
   
    print(((i/100 == 1 ) ? "\(i) " :((i/10 > 0 ) ?  " \(i) ": "  \(i) ") ) ,terminator:"")
   // i>=100, i>9 && i<100 ,i<10
   // print(" \(i) ",terminator:"")
    if(i%3 == 0){ print("_3 ",terminator:"")}
    if(i%5 == 0){ print("_5 ",terminator:"")}
    if(i%7 == 0){ print("_7 ",terminator:"")}
    print("")
}



var k = 1
while k<=5 {
    print(k)
     k += 1
}

var j = 10
repeat{
    print(j)
    j += 1
}while j<=5

var v0 = 1
var v1 = 1
//(var a3= a1+a2)
var tmp = 0
print(v0)
print(v1)
while( v1+v0<100 )
{
    tmp = v1
    v1 = v1+v0
    v0 = tmp
    print(v1)
}

v0 = 1
v1 = 1
repeat{
tmp = v1
v1 = v1+v0
v0 = tmp
print(v1)
}while v1+v0<100

// javascript
//function f( p) {
//    if(p===1 || p===0) {return 1;}
//    else{
//        return f( p-1 ) + f (p-2) ;
//    }
//} //f(3)


var min = 1
var max = 3

for i in min...max{
    var tmp = max - i
    if(tmp>0){
        for j in 1...tmp {
            print(" ",terminator:"")
            //print("\(i)",terminator:"")
        }
    }
    for k in 1...i{
        print("*",terminator:"")
    }
     print()
}

for i in min...max{
    var tmp = max - i
    for k in 1...i{
        print("*",terminator:"")
    }
    if(tmp>0){
        for j in 1...tmp {
            print(" ",terminator:"")
            //print("\(i)",terminator:"")
        }
    }
    print()
}

for i in min...max{
    var tmp = max - i
    if(tmp>0){
        for j in 1...tmp {
            print(" ",terminator:"")
            //print("\(i)",terminator:"")
        }
    }
    for k in 1...i{
        print("*",terminator:"")
    }
    print()
}

for i in min...max{
    var tmp = max - i
    for k in 0..<i{
        print("*",terminator:"")
    }
    if(tmp>0){
        for j in 1..<tmp {
            print(" ",terminator:"")
            //print("\(i)",terminator:"")
        }
    }
    print()
}

print("-----")

for i in min...max{
    var tmp = max - i
    if(tmp>0)
    {
    for k in 1...tmp {
        print(" ",terminator:"")
    }
    }
    for j in min...(( 2*i )-1){
    print("*",terminator:"")
    }
    print()
}

print("-----")

for i in min...max{
    var tmp = max - i
    if(tmp>0)
    {
        for j in min...(( 2*tmp )-1){
            print("*",terminator:"")
        }
    }
    for k in 1...(2*i-1) {
        print(" ",terminator:"")
    }

       print()
}










