//
//  utils.swift
//  CH07Enum
//
//  Created by ucom Apple 13 on 2016/11/10.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

//nested type 不要用, 除非後台, 可以用命名規則處理 （知道其packages） , UITablew
// uikit  fundation (NS), CoreLocation CL, Socilocation SL
struct com{
    struct uuu { // nested type , 曹狀型別, 要寫在一起
        class Instructor{
        }
        class stufent{
        }
    }
}

enum Gender {
case Male,Female
}
enum Planet:Int{ //inhertage
case Monday=1, Tuesday,Wednesday,Thursday}


// raw value
//enum ASCIIControlChar: Character{
//   // case T1:// \t
//}

func getGenger(gender:Gender){
    switch gender{
    case .Male:
        print("hi male");
    case .Female:
        print("hi female");
    }}


////java 
//enum Day {
//    SUNDAY, MONDAY, TUESDAY, WEDNESDAY,
//    THURSDAY, FRIDAY, SATURDAY
//}
//public void monkeydoing() {
//    switch (day) {
//    case SUNDAY:
//        System.out.println("星期七，猴子刷油漆");
//        break;
//        
//    case MONDAY:
//        System.out.println("星期一，猴子穿新衣");
//        break;
