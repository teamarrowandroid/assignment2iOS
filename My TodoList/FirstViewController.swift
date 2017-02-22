//
//  FirstViewController.swift
//  My TodoList
//
//  Created by harpreet singh on 2017-02-19.
//  Copyright © 2017 assignment2. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
class FirstViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var tableofTasks: UITableView!
    var show:[String]=[]
    var handler : FIRDatabaseHandle?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var ref=FIRDatabase.database().reference()
        handler = ref.child("Tasks11").observe(.childAdded, with: { (snapshot) in
            if let listItem=snapshot.value as? String
            {
                self.show.append(listItem)
                self.tableofTasks.reloadData()
            }
        })

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableofTasks.reloadData()
    }
    
public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
       return self.show.count
    }
    
    
         //showing data into table
     public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
     {
        let cell=tableView.dequeueReusableCell(withIdentifier: "Default", for: indexPath)
        let task=cell.viewWithTag(1) as! UILabel
        task.text = show[indexPath.row]

          //cell.textLabel?.text = show[indexPath.row]
          //cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].descp
        
        return cell
    }
    
  
    // performing delete operation
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if(editingStyle == UITableViewCellEditingStyle.delete)
        {
            self.show.remove(at: indexPath.row)
          
        
            tableofTasks.reloadData()
        }
    }
}

