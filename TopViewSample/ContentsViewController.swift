//
//  ContentsViewController.swift
//  TopViewSample
//
//  Created by 伊藤純一 on 2017/09/29.
//  Copyright © 2017年 ji. All rights reserved.
//

import UIKit

class ContentsViewController: UIViewController, UIWebViewDelegate {

    var ownView:UIViewController!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
