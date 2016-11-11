//
//  ViewController.swift
//  CH10_UIAppliaction
//
//  Created by ucom Apple 13 on 2016/11/10.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let link = "http://ucom.uuu.com.tw/UMA"
        let url = NSURL(string: link) // why 小寫？？
        let app = UIApplication.sharedApplication()
        app.openURL(url!)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

