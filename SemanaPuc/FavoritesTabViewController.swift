//
//  FavoritesTabViewController.swift
//  SemanaPuc
//
//  Created by Rafael M. A. da Silva on 7/11/16.
//  Copyright © 2016 munhra. All rights reserved.
//

import UIKit

class FavoritesTabViewController: UIViewController {
    
    override func viewDidLoad() {
        let storyboard = UIStoryboard(name: "Favorites", bundle: nil)
        let controller = storyboard.instantiateInitialViewController()
        addChildViewController(controller!)
        view.addSubview(controller!.view)
        controller!.didMoveToParentViewController(self)
    }

}

