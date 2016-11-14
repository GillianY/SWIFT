//
//  types.swift
//  CH14
//
//  Created by ucom Apple 13 on 2016/11/11.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

extension UInt{
    func times(myfunc : ()->())
    {
        for _ in 1...self{
        myfunc()
        }
    }
}

protocol IA {
    func mA()
    var index : Int {get}
}

protocol IB {
   func  mB()
   func  mC()
}

@objc protocol ID {
   optional func  mB()
   optional func  mC()
}


class IDImpl : ID{
    func  mB(){}
    func  mC(){}
    
}

class IBImpl : IB{
    func  mB(){}
    func  mC(){}
    
}
protocol IC: IB,IA {}




