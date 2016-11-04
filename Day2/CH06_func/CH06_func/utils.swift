//
//  utils.swift
//  CH06_func
//
//  Created by ucom Apple 13 on 2016/11/4.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

func test0(personName name: String, greeting str:String){
    print( "hihi");
}


func test(PersonName name: String)-> String {
return "hihi \(name)";
}

//print(test("gina")); // 2.x
//print(test())

func sayHi()->String{
    return "Hi" ;
}

func sayHiTo(peopleName : String)-> String
{
    return "Hi \(peopleName)!"
}

func sayHiToWithGreeting(personname name : String, greeting str:String)-> String
{
    return "Hi \(name) ,\(str)!"
}

func sayHiToWithGreeting2(personname name : String, greeting str:String=" good day :) !!")-> String
{
    return "Hi \(name) ,\(str)!"
}

func sayHiToWithGreeting3(personname name : String="User ", greeting str:String=" good day :) !!")-> String
{
    return "Hi \(name) ,\(str)!"
}

func sum(i :Int , _ j:Int)
{ print("\(i+j)")
}
func sum(i :Int , _ j:Int,_ k:Int)
{ print("\(i+j+k)")
}

func sum(nums :Int ...) // actually it is an array
{    var total = 0;
    for n in nums {
        total += n;
    }
    print ("TOTAL: \(total)")
}
func test001( idx :Int){
    var idx2 = idx
    idx2 += 5;
    print("\(idx2)")// ?????
}

func test003(inout test1 idx :Int ,inout test2 idx2 :Int)
{
    idx += 1;
    idx2 += 3;
    print("idx: \(idx) , idx2:\(idx2)")
}

//2.x
//func test001(var idx :Int){
//     idx += 1;
//}

//pass by copy


// function type
func m1(i:Int, _ j:Int)
{ print("\(i+j)")
}

func m2(i:Int, _ j:Int)
{ print("\(i*j)")
}

func PrcieCompany1(i:Int, _ j:Int=12)->Int?
{
    return i*j;
}
func PrcieCompany2(i:Int, _ j:Int=15)->Int?
{
    return i*j-20;
}


func processLogic(myfunc :(Int,Int)->Int? ,_ a:Int,_ b :Int){
    print("\(myfunc(a,b)!)")
}




