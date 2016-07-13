//
//  ActivityViewController.swift
//  SemanaPuc
//
//  Created by Rafael M. A. da Silva on 7/11/16.
//  Copyright © 2016 munhra. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController, UITableViewDataSource {
    
    let fruits = ["Laranja", "Abacate", "Mamao", "Tomate" , "Uva"]
    var events = Array<Events>()
   
    
    override func viewDidLoad() {
        
        events = EventsDAO().generateFakeEvents()
    }
    
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

    
        
        return "****Aqui Vai a Hora****"
        
    }
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

     
        
        return events.count//. count retorna o tamanho do meu Array(numero de elementos)
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
       let cell = tableView.dequeueReusableCellWithIdentifier("eventCell", forIndexPath: indexPath)
        
      
        
        
       cell.textLabel?.text = events[indexPath.row].eventTitle
        
        
        
        
        return UITableViewCell()
    }
}
