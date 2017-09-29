//
//  ViewController.swift
//  TopViewSample
//
//  Created by 伊藤純一 on 2017/09/28.
//  Copyright © 2017年 ji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // インスタンス配列
    var controllerArray : [UIViewController] = []
    var pageMenu : CAPSPageMenu?
    
    let pageInfo : [String] = ["Page01", "Page02", "Page03"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for page in pageInfo {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: page)
            controllerArray.append(vc)
        }
        
        // Customize menu (Optional)
        let parameters: [CAPSPageMenuOption] = [
            .scrollMenuBackgroundColor(UIColor.white),
            .viewBackgroundColor(UIColor.white),
            .bottomMenuHairlineColor(UIColor.blue),
            .selectionIndicatorColor(UIColor.red),
            .menuItemFont(UIFont(name: "HelveticaNeue", size: 14.0)!),
            .centerMenuItems(true),
            .menuItemWidthBasedOnTitleTextWidth(true),
            .menuMargin(16),
            .selectedMenuItemLabelColor(UIColor.black),
            .unselectedMenuItemLabelColor(UIColor.gray)
            
        ]
        
        // Initialize scroll menu
        
        let rect = CGRect(origin: CGPoint(x: 0,y :20), size: CGSize(width: self.view.frame.width, height: self.view.frame.height))
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: rect, pageMenuOptions: parameters)
        
        self.addChildViewController(pageMenu!)
        self.view.addSubview(pageMenu!.view)
        
        pageMenu!.didMove(toParentViewController: self)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

