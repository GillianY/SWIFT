//
//  utils.swift
//  CH06_febonacci
//
//  Created by ucom Apple 13 on 2016/11/4.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import Foundation


//loop 已有公式 (Recursive)  ＆＆ 會有記憶體損耗(堆疊Stack）
//Recursive 後台盡量避免 效能疑慮
func febonacci(nth: UInt)->Int? {
    if(nth == 0){return nil}
    if(nth == 1){return 1}
    if(nth == 2 ){return 1}
    else{
        return (febonacci(nth-1)!+febonacci(nth-2)!);
    }
}

func febonacci2(nth: UInt)->Int? {
    
        if(nth >= 3){
            var v1 = 1;
            var v2 = 1;
            var v0 = 0;
            // 0..<(nth-2)
            for _ in 3...nth{
               v0=v1
               v1=v2
               v2=v2+v0
            }
            return v2;
    }else if(nth == 0){
            return nil }
    else if(nth == 1){
            return 1 }
    else if(nth == 2 ){return 1}
    else{return -1}
    
}