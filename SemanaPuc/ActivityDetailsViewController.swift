//
//  ActivityDetailsViewController.swift
//  SemanaPuc
//
//  Created by vntlab on 7/15/16.
//  Copyright © 2016 munhra. All rights reserved.
//

import UIKit

class ActivityDetailsViewController: UIViewController{
    
    var event = Events()
    
    
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var eventHour: UILabel!
    
    override func viewDidLoad() {
     
       eventTitle.text = event.eventTitle
       eventHour.text = event.eventHour
    }
    
}