//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var min = 1
var max = 4
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
print("------")
var rows = 9

var i = 1
var j = 1

while i <= rows{
    if(i%2 == 1){ i += 1;
        continue;}

    i+=1;
}

var cols = 9
var row = 1

let cartype_standard = 1
let cartype_VIP = 2;
let cartype_deluxe = 3 ;

let mycar = cartype_VIP

switch mycar {
case cartype_deluxe:
    print("Air bag")
   // print("ABS")
    fallthrough
case cartype_VIP:
     print("ABS")
    fallthrough
case cartype_standard:
    print("Radio")
    fallthrough
default:
    print("wheel")
    print("Engine")


}

print("aaa------")


str = ""
for i in 1..<3  {
switch mycar {
case cartype_deluxe:
    str+="Air bag"
    continue
case cartype_VIP:
    str += "ABS"
    continue
case cartype_standard:
    str += "Radio"
    continue
default:
    str+=("wheel")
    str+=("Engine")
    }
    str+="test"
}
print(str)


func test(idx : Int){
    if(idx>0){
        print("good")
    }else{
        print("error")
        return
    }

}

test(-1)
//test(-1)

func test2( idx : Int )
{
    guard idx > 0 else
    { print("error")
        return
    }
    print("gooood")
    
}
test2(-1)


//var tmp =2
//outter : while (tmp >2){
//
//}
