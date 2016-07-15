//
//  ActivityViewController.swift
//  SemanaPuc
//
//  Created by Rafael M. A. da Silva on 7/11/16.
//  Copyright © 2016 munhra. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController,UITableViewDataSource {
    
    
    var schedule = [String:[Events]?]()
    
     var eventosDictionary = EventsDAO()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        schedule = eventosDictionary.generateFakeEvents()
        
    }
    
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let keys = Array(schedule.keys).sort(<)
       // let keys2 = keys.sort(<)
        return keys[section]
    }
    
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return schedule.keys.count
    }
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
       
        let cell = tableView.dequeueReusableCellWithIdentifier("eventCell", forIndexPath: indexPath)
        let keys = Array(schedule.keys)
        let key = keys[indexPath.section]
        cell.textLabel?.text = schedule[key]!![indexPath.row].eventTitle
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let keys = Array(schedule.keys)
        let key = keys[section]
        return (schedule[key]?!.count)!
    }
    
    
    
    
    

}
