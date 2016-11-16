//
//  ViewController.swift
//  UI01
//
//  Created by ucom Apple 13 on 2016/11/15.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let NumberOfImage :Int = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let winRect :CGRect = self.view.frame
        //for(var i: Int = 0 ; i< NumberOfImage; i++ ){
        for var i:Int in 1...NumberOfImage {
            var img :UIImageView = UIImageView(image: UIImage(named: "Pumpkin01_64"))
            
            img.center = CGPointMake(CGFloat(arc4random() % UInt32(winRect.size.width)), CGFloat(arc4random() % UInt32(winRect.size.height)))
            self.view.addSubview(img)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

