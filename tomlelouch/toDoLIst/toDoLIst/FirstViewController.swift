//
//  FirstViewController.swift
//  toDoLIst
//
//  Created by tomlelouch on 6/5/16.
//  Copyright © 2016 tomlelouch. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tblToDoes: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //returning to view
    override func viewWillAppear(animated: Bool) {
        tblToDoes.reloadData()
    }
    

    
    // UITableView DataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoMgr.toDoes.count;
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        
        cell.textLabel?.text = toDoMgr.toDoes[indexPath.row].title
        cell.detailTextLabel?.text = toDoMgr.toDoes[indexPath.row].desc
        
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if(editingStyle == UITableViewCellEditingStyle.Delete) {
            toDoMgr.toDoes.removeAtIndex(indexPath.row)
        }
        
        tblToDoes.reloadData()
    }
    
   
}

