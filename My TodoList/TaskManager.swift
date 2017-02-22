//
//  TaskManager.swift
//  My TodoList
//
//  Created by harpreet singh on 2017-02-19.
//  Copyright © 2017 assignment2. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
//global object of TaskManager class to access it outside anywhere

var taskMgr:TaskManager=TaskManager()

//structure to store data
public struct taskStructure{
    
    var name="new name"
    var descp="new description"
    
}

class TaskManager: NSObject {

    var tasks = [taskStructure]()
    
    //function to add data to array "tasks" using structure of struct'taskStructure'
    func addTask(name:String,desc:String)
    {
     
        tasks.append(taskStructure(name: name, descp: desc))
     
        
        var messageRef = FIRDatabase.database().reference().child("Tasks11")
        
        let newMessage = messageRef.childByAutoId()
      
        newMessage.setValue(name)
        
        
    }
    

   
}
