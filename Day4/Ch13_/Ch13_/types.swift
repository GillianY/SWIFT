//
//  types.swift
//  Ch13_
//
//  Created by ucom Apple 13 on 2016/11/11.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

func testLottory2(){
    var order=[Int](count:6, repeatedValue:0)
    var set :Set<Int> = []
    var specialNum :Int = 0
    while set.count != 7 {
        let g = (Int(arc4random()) % 49) + 1;
        print(g)
        if(!set.contains(g)){
            set.insert(g)
            if(set.count == 7 )
            { specialNum = g
            }else
            { order[set.count-1]=g
            }
        }
    }
    set.remove(specialNum)
    print("開獎號碼: \(order) 特別號: \(specialNum)")
    print("開獎順序: \(set.sort()) 特別號: \(specialNum)")
}


func testLottory3(){
    var order=[Int](count:6, repeatedValue:0)
    var set :Set<Int> = []
    var specialNum :Int = 0
    while set.count != 7 {
        let g = (Int(arc4random()) % 49) + 1;
        set.insert(g)
        
        print(g)
        if(set.count == 7 )
        { specialNum = g
        }else
        { order[set.count-1]=g
        }
    }
    set.remove(specialNum)
    print("開獎號碼: \(order) 特別號: \(specialNum)")
    print("開獎順序: \(set.sort()) 特別號: \(specialNum)")
}


func testLottory(){
    var order: Array<Int>=[];
    var set :Set<Int> = [0,0,0,0,0,0];
    var special = 0;
    
  
    var isOK = false;
    
    func getRandom ()
    {  let g = (Int(arc4random()) % 49)+1;
        print(g)
        
        if(!set.contains(g)){
            set.insert(g)
            order.append(g)
        }
    }
    
    while( !isOK ){
        getRandom()
        if(order.count == 6)
        {isOK = true}
        
    }
  
    var a = (Int(arc4random()) % 49)+1;
     while(!set.contains(a)){
        special = a
        a = (Int(arc4random()) % 49)+1;
    }

    print(order)
    print(special)
    print(order.sort(<))
    
    
}


func testSet(){
    var set : Set<String> = ["ken","Lily","Dora","John"]
    print(set.count)
    set.insert("no")
    //print()
    

}

func testDictionary(){
    var dict : [String:String] = [:]
    dict["Name"] = "Ken"
    dict["Age"] = "23"
    dict["Address"] = "France"
    print(dict.count)
    print(dict["Name"])
    print(dict)
    
    for (key,val) in dict{
    print("\(key): \(val) ")
    }
    
    for key in dict.keys{
    print("\(key) = \(dict[key]!)") //optional
    }
    for val in dict.values{
        print("\(val)")
    }
    

}

func testArray(){
    var array = ["jack","dave"]
    array.append("vicky")
    array += ["Gina","Bellicia"]
    array[4] = "la grande belleza"
   // array[4...5] = ["la grande belleza","the length of 1900"]
    // 不會自動增加 跟 java 像
    print(array)
    print(array.count)
    print(array[3])
    
    let v1 = [Int](count:4,repeatedValue:19)
    print(v1.count)
    print(v1)
}
func testString(){
    //let s1 String
    var s1 = "Hello "
    var ch1 : Character = "A"
    s1.append(ch1)
    print(s1)
    print(s1.characters.count)
    print(s1.isEmpty)
    s1 = ""
    print(s1.isEmpty)
    
    
}
