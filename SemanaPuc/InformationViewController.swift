//
//  InformationViewController.swift
//  SemanaPuc
//
//  Created by vntlab on 7/15/16.
//  Copyright © 2016 munhra. All rights reserved.
//
import UIKit

class InformationViewController:UITableViewController
{
    
    let phoneNumber = "08007287822"

    @IBAction func PhoneButtom(sender: UIButton) {
        if let phoneCallURL:NSURL = NSURL(string:"tel://\(phoneNumber)") {
            let application:UIApplication = UIApplication.sharedApplication()
            if (application.canOpenURL(phoneCallURL)) {
                application.openURL(phoneCallURL);
                
            }
        }
    }
 
    
    @IBAction func siteButtom(sender: UIButton) {
    
        let url = NSURL(string: "https://google.com")!
        UIApplication.sharedApplication().openURL(url)
    }
    
    @IBAction func VenturusButtom(sender: UIButton) {
        let url = NSURL(string: "http://www.venturus.org.br/site/")!
        UIApplication.sharedApplication().openURL(url)
    }
}
