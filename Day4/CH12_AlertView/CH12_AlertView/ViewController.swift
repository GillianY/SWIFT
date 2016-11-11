//
//  ViewController.swift
//  CH12_AlertView
//
//  Created by ucom Apple 13 on 2016/11/11.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let alert = UIAlertView(title: "welcome msg", message: "Bonjour", delegate: nil,cancelButtonTitle: "Cancel",otherButtonTitles: "Offical Website")  //
        alert.show()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

