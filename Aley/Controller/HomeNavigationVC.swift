//
//  HomeNavigationVC.swift
//  Aley
//
//  Created by zeyad on 12/7/19.
//  Copyright © 2019 zeyad. All rights reserved.
//

import UIKit
@available(iOS 11.0, *)
class HomeNavigationVC: UITabBarController ,UITabBarControllerDelegate{

       required init(coder aDecoder: NSCoder) {
              super.init(coder: aDecoder)!
          }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        tabBar.clipsToBounds = true
        self.tabBar.isTranslucent = true
        tabBar.layer.cornerRadius = 25
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    

}
