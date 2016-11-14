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
   // func showInfo()
    func showBasicInfo() -> String
}

//refactor review // only in swift
func showShapeInfo(shape : IShape){
    print("\(shape.dynamicType): \(shape.showBasicInfo())  area_\(shape.area) peremeter_\(shape.peremeter)")


}

struct Circle : IShape {
    var radius : Double = 0.0
    var peremeter : Double {
        get{
            return radius * 2 * M_PI
        }
    }
    var area : Double {
        get{
            return pow((radius),2)*M_PI
        }
    }
    
    func showInfo(){
        print("\(self.dynamicType): \(showBasicInfo())  area_\(area) peremeter_\(peremeter)")
    }
    
    func showBasicInfo()->String{
        return "[radius=\(radius)]"
    }
}

class Rectangle : IShape{
    var width : Double = 0.0
    var height:Double = 0.0
    
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
        print("\(self.dynamicType): area:\(area) peremeter:\(peremeter)")
    }
    func showBasicInfo()->String{
        return "[width:\(width) height:\(height) ]"
    }


}

class Square : Rectangle{
    init(width:Double){
        super.init(width:width , height:width)
    }
    
}
