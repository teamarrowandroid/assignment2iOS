//
//  TableViewCell.swift
//  My TodoList
//
//  Created by harpreet singh on 2017-02-20.
//  Copyright © 2017 assignment2. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var editor: UIButton!
    @IBOutlet weak var taskk: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
            //changing button and label text according to switch 
    @IBAction func switcher(_ sender: UISwitch) {
        
        if sender.isOn==true{
            taskk.textColor=UIColor.darkText
            taskk.font=UIFont.boldSystemFont(ofSize: 25)
            editor.isEnabled=true
        
        }
        else{
            
            taskk.textColor=UIColor.lightGray
            taskk.font=UIFont.boldSystemFont(ofSize: 15)
            editor.isEnabled=false
            
        }
        
    }
}
