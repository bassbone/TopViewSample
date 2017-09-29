//
//  FavScrollView.swift
//  TopViewSample
//
//  Created by 伊藤純一 on 2017/09/29.
//  Copyright © 2017年 ji. All rights reserved.
//

import UIKit

class FavScrollView: UIScrollView {

    override init(frame: CGRect) {
        super.init(frame: frame);
        Initialize();
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        Initialize();
    }
    
    // initialize method
    func Initialize(){
        self.delegate = self;
    }
}

extension FavScrollView : UIScrollViewDelegate{
    
    // ドラッグ(スクロール)しても y 座標は開始時から動かないようにする(固定)
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        var point : CGPoint
        point = scrollView.contentOffset
        point.y = 0
        scrollView.contentOffset = point
    }
}
