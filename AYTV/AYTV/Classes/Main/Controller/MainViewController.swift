//
//  MainViewController.swift
//  AYTV
//
//  Created by Andy on 2022/9/18.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildVc(name: "Home")
        addChildVc(name: "Rank")
        addChildVc(name: "Discover")
        addChildVc(name: "Profile")

    }
    
    
}

extension MainViewController {
    
    fileprivate func addChildVc(name: String) {
        let homeVc = UIStoryboard(name: name, bundle: nil).instantiateInitialViewController()!
        addChild(homeVc)
    }
    
}
