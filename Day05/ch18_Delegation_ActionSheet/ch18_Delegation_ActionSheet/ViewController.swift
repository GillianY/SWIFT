//
//  ViewController.swift
//  ch18_Delegation_ActionSheet
//
//  Created by ucom Apple 13 on 2016/11/14.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import UIKit

//step 1-1
class ViewController: UIViewController,UIActionSheetDelegate,UIAlertViewDelegate {

    //Controller initialized
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        /*step 2*/
//        let action = UIActionSheet(title: "Choose an  option", delegate: self , cancelButtonTitle: "Cancel", destructiveButtonTitle: "Share",otherButtonTitles: "OK","Save")
        //order bythe importance,  Red Share0,
//        action.showInView(self.view) //controller  底圖
        
        let alertView  = UIAlertView(title: "Info", message: "Welcome", delegate: self, cancelButtonTitle: "Cancel", otherButtonTitles: "Share" , "Save" , "OK")
        // index by order
        alertView.show()
    }
    
    
    //placed in center
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
         print("U selected : \(buttonIndex)")
    }
    
    //step 1-2
    // form button
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        print("U selected : \(buttonIndex)")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

