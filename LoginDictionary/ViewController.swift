//
//  ViewController.swift
//  LoginDictionary
//
//  Created by Patinya Sathaporncharoenying on 10/14/2560 BE.
//  Copyright © 2560 khaiharnn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Explicit
    //
    var nameString: String = ""
    var pwdString: String = ""
    var result = ""
    
    // กำหนดค่าคงที่
    let userDictionary = ["user1":"1111","user2":"2222","user3":"3333"]
    let alertDictionary = ["userfalse":"ไม่มี user ในฐานข้อมูล","passfalse":"Please Try Again","authenOK":"Welcome to my app"]
    

    
    @IBOutlet weak var userTextField1: UITextField!
    
    @IBOutlet weak var pwdTextField2: UITextField!
    
    @IBOutlet weak var alertLabel: UILabel!
    
    @IBAction func clickButton(_ sender: Any) {
        
        // Get value Textfield
        nameString = userTextField1.text!
        pwdString = pwdTextField2.text!
        
        //Display ค่าที่รับมาจาก textfield
        print("User = \(nameString)")
        print("Pwd = \(pwdString)")
        
        let resultString = userDictionary[nameString]
        print("result = \(String(describing: resultString))")
        
        // check user
        if (resultString == nil) {
           // Userfalse
            alertLabel.text = alertDictionary["userfalse"]
        } else {
            
        }
        
        if (pwdString == resultString){
            //pwd True
            alertLabel.text = alertDictionary["authenOK"]
        }
        
        else{
           // pwd False
            alertLabel.text = alertDictionary["passfalse"]
        }
    } // loginbutton
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

