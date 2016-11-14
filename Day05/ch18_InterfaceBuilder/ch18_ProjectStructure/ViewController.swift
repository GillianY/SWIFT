//
//  ViewController.swift
//  ch18_ProjectStructure
//
//  Created by ucom Apple 13 on 2016/11/14.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

import UIKit

//step 1-1
class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //step 2
        self.nameInput.delegate = self;
    }

    @IBOutlet weak var nameInput: UITextField!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //step1-2
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func btnSayHello(sender: AnyObject) {
        displayName.text = " Ciao! \(nameInput.text!)"
        
        nameInput.resignFirstResponder()
    }

    @IBOutlet weak var displayName: UILabel!

}

