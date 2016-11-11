//
//  types.swift
//  ch08Types
//
//  Created by ucom Apple 13 on 2016/11/10.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

struct GeoLocation{
    //25.0854061,121.5615012
    var latitude = 0.0
    var longtitude = 0.0
    var title = "somewhere"
    func showInfo(){
    print("print \(title):\(latitude):\(longtitude)")}
}

class User {
    var name : String?
    var address : String?
    func showInfo(){
        print("\(name ?? "someone") live in \(address ?? "Milan")")
    }
    
}
