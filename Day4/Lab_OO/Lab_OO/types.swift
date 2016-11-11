//
//  types.swift
//  Lab_OO
//
//  Created by ucom Apple 13 on 2016/11/11.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation


protocol IShape{
    var peremeter : Double {get }
    var area : Double { get}
    func showInfo()
}

struct Circle : IShape {
    var radius : Double;
    var peremeter : Double {
        get{
            return radius * M_PI
        }
    }
    var area : Double {
        get{
            return pow((radius/2),2)*M_PI
        }
    }
    
    func showInfo(){
        print("Circle:radius_\(radius)  area_\(area) peremeter_\(peremeter)")
    }
}

class Rectangle : IShape{
    var width : Double
    var height:Double
    
    init(width:Double,height :Double )
    {
        self.width = width
        self.height = height
    }
    var peremeter : Double {
        get{
            return (width + height) * 2
        }
    }
    var area : Double {
        get{
            return width*height
        }
    }
    
    func showInfo(){
        print("width:\(width) height:\(height) area:\(area) peremeter:\(peremeter)")
    }

}

class Square : Rectangle{
    init(width:Double){
        super.init(width:width , height:width)
    }
    
}
