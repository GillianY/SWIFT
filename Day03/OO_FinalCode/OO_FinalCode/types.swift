//
//  types.swift
//  OO_FinalCode
//
//  Created by ucom Apple 13 on 2016/11/10.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

class GameData{
    var answer: Int
    var count : Int
    var lowerBound : Int
    var upperBound : Int

    init()
    {
        //變數初始化
        count = 0
        lowerBound = 1
        upperBound = 100
        //產生亂數做為解答
        answer = Int(arc4random()) % (upperBound - lowerBound + 1) + lowerBound
        print("ANSWER : \(answer)")
        
    }
    
    func compare(userInputStr:NSString)->Bool{
        count += 1
        let userInput = userInputStr.integerValue
        if userInput == answer{
            //比對成功,輸出次數與解答
            //print("ANSWER : \(answer), COUNT : \(count)")
            return true;
        }else{
            //比對失敗,調整上下邊界
            if userInput < answer && userInput >= lowerBound{
                lowerBound = userInput + 1
            }else if userInput > answer && userInput <= upperBound{
                upperBound = userInput - 1
            }
        }
        return false
    }
}

struct GameFlow{
    var data = GameData()
    
    func getInput() -> NSString {
        let keyboard = NSFileHandle.fileHandleWithStandardInput()
        let inputData = keyboard.availableData
        return NSString(data: inputData, encoding:NSUTF8StringEncoding)!
    }

    
    func play(){
        var isStop :Bool
        isStop = false
        while(!isStop){
            //提示訊息含上下邊界
            print("Enter : \(data.lowerBound) ~ \(data.upperBound)")
            //讀取玩家輸入
            //let userInputStr = getInput()
            //轉型 & count++
            if(data.compare(getInput())){
              print("ANSWER : \(data.answer), COUNT : \(data.count)")
             isStop = true
            }
            
        }
    }

}
   
