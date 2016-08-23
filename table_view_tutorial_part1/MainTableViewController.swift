//
//  MainTableViewController.swift
//  table_view_tutorial_part1
//
//  Created by Zephaniah Cohen on 8/22/16.
//  Copyright © 2016 Zephaniah Cohen. All rights reserved.
//

import Foundation
import UIKit

class MainTableViewController : UITableViewController {
    
    let personNames = ["John", "Max", "Sarah", "Alice"]
    
    //MARK: - View Management
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Table View Data Source Methods
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personNames.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let customCell = tableView.dequeueReusableCellWithIdentifier("Cell") as! CustomCell
        
        customCell.personName.text = personNames[indexPath.row]
        customCell.backgroundColor = UIColor.greenColor()
        
        return customCell
    }
}