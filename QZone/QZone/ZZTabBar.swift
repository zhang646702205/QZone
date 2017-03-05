//
//  ZZTabBar.swift
//  QZone
//
//  Created by xinghuo on 16/5/27.
//
//

import UIKit



class ZZTabBar: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addButtons("tabbar_photo")
        addButtons("tabbar_mood")
        addButtons("tabbar_blog")
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }

    func addButtons(_ name: String ) {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: name), for: UIControlState())
        self.addSubview(button)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let itemW : CGFloat = 70.0;
        let itemH : CGFloat = itemW;
        
        if isLandscape() { // 横屏
            for i in 0  ..< self.subviews.count {
                let btn = self.subviews[i]
                btn.frame = CGRect(x: itemW *  CGFloat(i), y: 0, width: itemW, height: itemH)
            }
        } else {
            for i in 0  ..< self.subviews.count {
                let btn = self.subviews[i]
                btn.frame = CGRect(x: 0, y: itemH *  CGFloat(i) , width: itemW, height: itemH)
            }
        }
    }
}
