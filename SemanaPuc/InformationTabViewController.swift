//
//  InformationTabViewController.swift
//  SemanaPuc
//
//  Created by vntlab on 7/15/16.
//  Copyright © 2016 munhra. All rights reserved.
//

import UIKit

class InformationTabViewController: UIViewController {
    
    override func viewDidLoad() {
        let storyboard = UIStoryboard(name: "Information", bundle: nil)
        let controller = storyboard.instantiateInitialViewController()
        addChildViewController(controller!)
        view.addSubview(controller!.view)
        controller!.didMoveToParentViewController(self)
    }
    
}

