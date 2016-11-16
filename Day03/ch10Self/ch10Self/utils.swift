//
//  utils.swift
//  ch10Self
//
//  Created by ucom Apple 13 on 2016/11/10.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

class Student{}
class School{
    func getStudentBYID(sid:String)->Student?{
        return Student()
    }
    func setStudentBYID(sid:String,std:Student){
        
    }
    func getStudentByName(fname:String, _ lName:String)->[Student]{
        return [Student]()}
    
    subscript(sid:String)->Student?{
        get{
            return Student()
        }
        set{
            
        }
    }
    subscript(fname:String, lName:String)->[Student]{
        return [Student]()}
    
}


// singleton
public class Superman{
    private static var _inst: Superman? = Superman() //!!!!
    public static func sharedSuperman() -> Superman?{
    return _inst
    }
    private init(){}
}

class Demo{
    var name = ""
    func setName(name: String){
        self.name = name
    }
    
    struct Point {  // 使用  class 問題比較少
        var x = 0
        var y = 0
        mutating func moveTo(newX:Int, newY:Int){
          // newX +=1 //newX is a constant by default
            x = newX
            y = newY
        }
    }

}