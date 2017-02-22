//
//  SecondViewController.swift
//  My TodoList
//
//  Created by harpreet singh on 2017-02-19.
//  Copyright © 2017 assignment2. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var taskName: UITextField!
    
    @IBOutlet weak var taskDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //function -> to disappear keyboard when textfield loose touch or focus
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
     public func textFieldShouldReturn(_ textField: UITextField) -> Bool // delegate optional function to open keyboard with return button & disappear when clickk return
    {
        textField.resignFirstResponder();
        return true
    }
    
    @IBAction func addTaskk(_ sender: UIButton) {
        
        taskMgr.addTask(name: taskName.text!, desc: taskDesc.text!)
       // taskMgr.addT()
        self.view.endEditing(true)
        taskName.text=""
        taskDesc.text=""
        
        self.tabBarController?.selectedIndex=0
        
    }
    
    
}

