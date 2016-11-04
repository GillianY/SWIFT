//
//  main.swift
//  Lab_FinalCode
//
//  Created by ucom Apple 13 on 2016/11/4.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation

//varibles
var result:Int ;
var upperbound :Int;
var lowerbound :Int;
var count : Int;
var maxCount :Int;
var infomation :String = " ";
//var tmpAnswer :NSString ;
//var answer : Int;
var isFalse :Bool;

//initialize
upperbound = 50;
lowerbound = 10;
count = 0;
maxCount = 10;
isFalse = true;
//answer = 0 ;

//Logic
// get answer
result = (Int(arc4random()) % (upperbound-lowerbound + 1))+lowerbound;
print("answer: \(result)");
//info uper lower 
print("Please input an integer between :\(upperbound) ~\(lowerbound)" );

//read user input
var tmpAnswer = getInput()// as String

while( isFalse){ //!(tmpAnswer == (""))){
     count += 1;
    let answer =  tmpAnswer.integerValue ;// ?? -1;
   // print( " hi._\(answer)_...\(tmpAnswer.characters.count)");
      if(answer <= 0){
        
        infomation = " error input type :\(tmpAnswer) , please input again"
    }else if(answer == result ){
        infomation = "Yes answer is :\(result) , your counts:\(count) "
        isFalse = false;
        break;
    }else if( (answer > lowerbound) &&  (answer < result)){
        lowerbound = (answer+1)
         infomation = "Nononn.. please input:\(lowerbound)~ \(upperbound) "
    }else if((answer > result) &&  (answer < upperbound))
    {
        upperbound = (answer-1)
        infomation = "Nononn.. please input:\(lowerbound)~ \(upperbound) "
    }else {
        infomation = "Nononn.. please input:\(lowerbound)~ \(upperbound) "
    }
    
    
    print("  \(infomation)");
    tmpAnswer = getInput() // as String
}
print("good job")


//check sucess , output counter

//check fail , adjust upper lowwer



