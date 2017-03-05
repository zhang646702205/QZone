//
//  ZZIconButton.swift
//  QZone
//
//  Created by xinghuo on 16/5/27.
//
//

import UIKit

class ZZIconButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setImage(UIImage(named: "lufy"), for: UIControlState())
        self.setTitle("hehe", for: UIControlState())
        self.titleLabel?.textAlignment = .center
        self.titleLabel?.font = UIFont.systemFont(ofSize: 22.0)
        
        self.adjustsImageWhenHighlighted = false
        self.imageView?.layer.cornerRadius = 5.0
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        self.imageView?.frame = CGRect(x: 0, y: 0, width: itemHeight, height: itemHeight)
        if isLandscape() {
            
            self.titleLabel?.frame = CGRect(x: 0, y: (self.imageView?.frame)!.maxX,
                                                width: self.bounds.width, height: self.bounds.height - itemHeight)
        } else {
            let imgWidth = itemHeight - 10;
            self.imageView?.frame = CGRect(x: self.bounds.width / 2.0 - imgWidth / 2.0, y: 0, width: imgWidth, height: imgWidth)
            self.titleLabel?.frame = CGRect.zero;
        }
    }

}
