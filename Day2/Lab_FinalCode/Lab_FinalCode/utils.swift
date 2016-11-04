//
//  utils.swift
//  Lab_FinalCode
//
//  Created by ucom Apple 13 on 2016/11/4.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation


func getInput() -> NSString {
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    return NSString(data: inputData, encoding:NSUTF8StringEncoding)!
}

