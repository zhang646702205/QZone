//
//  ZZListButton.swift
//  QZone
//
//  Created by xinghuo on 16/5/27.
//
//

import UIKit

class ZZListButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setBackgroundImage(UIImage(named: "tabbar_separate_selected_bg"), for: .disabled)
        self.adjustsImageWhenHighlighted = false
        self.imageView?.contentMode = UIViewContentMode.center
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if isLandscape() {
            let width =  self.bounds.width
            let heigth = self.bounds.height
            self.imageView?.frame = CGRect(x: 0, y: 0  , width: heigth, height: heigth)
            self.titleLabel?.frame = CGRect(x: (self.imageView?.frame)!.maxX, y: 0, width: width , height: heigth)
            
        } else {
            self.imageView?.frame = self.bounds
            self.titleLabel?.frame = CGRect.zero
        }
    }

}
