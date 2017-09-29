//
//  Page02ViewController.swift
//  TopViewSample
//
//  Created by 伊藤純一 on 2017/09/29.
//  Copyright © 2017年 ji. All rights reserved.
//

import UIKit

class Page02ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let size = CGSize(width: scrollView.frame.size.width, height: 200)
        
        let contentRect = CGRect(x: 0, y: 0, width: size.width * 4, height: size.height)
        let contentView = UIView(frame: contentRect)
        
        for index in 0...7 {
            let subContentView = UIView(frame: CGRect(x: size.width * CGFloat(index) * 0.5, y: 0, width: size.width * 0.5, height: size.height))
            subContentView.backgroundColor = UIColor.init(red: CGFloat(0.125 * Double(index)), green: CGFloat(0.125 * Double(index)), blue: CGFloat(0.125 * Double(index)), alpha: 1)
            contentView.addSubview(subContentView)
        }
        
        scrollView.addSubview(contentView)
        scrollView.contentSize = contentView.frame.size
        scrollView.contentOffset = CGPoint(x: size.width, y: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
