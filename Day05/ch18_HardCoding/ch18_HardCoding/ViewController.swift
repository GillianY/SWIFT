//
//  ViewController.swift
//  ch18_HardCoding
//
//  Created by ucom Apple 13 on 2016/11/14.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let btn = UIButton(type: UIButtonType.RoundedRect) //since IOS7 -> no border ,just title ; flat -> memory & bettery
        btn.setTitle("Click Me!", forState: UIControlState.Normal)
        btn.frame = CGRectMake(100, 100, 150, 70)
        btn.backgroundColor = UIColor.cyanColor()
        btn.tintColor = UIColor.whiteColor()
        self.view.addSubview(btn)
        
//        btn.addTarget(self, action: #selector(ViewController.tapHandler()), forControlEvents: UIControlEvents.TouchUpInside)
        
        btn.addTarget(self, action: #selector(ViewController.tapHandler(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
//        btn.addTarget(self, action: #selector(ViewController.tapHandler(_:event:)), forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    func tapHandler(sender:UIButton,event:UIEvent
        ){
        print("tapHandler Sender:\(sender)  Event:\(event)")

    }
    
    func tapHandler(sender:UIButton
        ){
        print("tapHandler  Sender:\(sender)")

    }
    
    func tapHandler(){
        print("tapHandler")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

