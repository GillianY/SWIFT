//
//  main.swift
//  ch08Types
//
//  Created by ucom Apple 13 on 2016/11/10.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

print("Hello, World!")
var place1 = GeoLocation();
place1.latitude = 25.0854061
place1.longtitude = 121.5615012

place1.title = "hello Taipei";
print(place1);
var place2 = GeoLocation(latitude: 25.0854061,longtitude:121.5615012,title:"Taipei" )

print(place2);
place2.showInfo()
print("hi",terminator:"____")



var i = 0;
var j = i;


var place3 = place1 ; //struct : value type
place3.title="XXX"
print(place1.title) //hello Taipei ,struct copy value (value type)!!! not ref

//struct can use as tuple


//class call by refernce
var u1 = User()
u1.name = "Gillian"
u1.address="Milan"
u1.showInfo()   // Gillian live in Milan

var u2 = u1
u2.address = "Paris"
u1.showInfo()  //Gillian live in Paris

var u3 = User()
u3.name = "Gillian"
u3.address = "Milan"

print(u1 === u2);  //address , the same = true
//print(u1 == u3);  //error 
print(u1.name == u3.name) //true ; String  ,[], colection ->  實質型態


