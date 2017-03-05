//
//  ZZLeftView.swift
//  QZone
//
//  Created by xinghuo on 16/5/27.
//
//

import UIKit



class ZZLeftView: UIView {

   lazy var tarBar : ZZTabBar = ZZTabBar()
    lazy var listBar : ZZListView = ZZListView()
    lazy var iconButton : ZZIconButton = ZZIconButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // 添加 图标
        self.addSubview(iconButton)
        // list 
        self.addSubview(listBar)
        // 添加 底部按钮
        self.addSubview(tarBar)
    
        self.backgroundColor = UIColor(red: 41/255.0, green: 41/255.0, blue: 41/255.0, alpha: 1.0)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        let screenH = screenHeight()
        let width = self.bounds.width
            if isLandscape() { // 横屏
                self.tarBar.frame = CGRect(x: 0, y: screenH - itemHeight, width: width, height: itemHeight)
                iconButton.frame = CGRect(x: (width / 2.0 - itemHeight / 2.0), y: 80, width: itemHeight, height: itemHeight + 40)
                iconButton.center.x = self.center.x
                
            }else {
                self.tarBar.frame = CGRect(x: 0, y: screenHeight() - itemHeight * 3, width: width , height: itemHeight * 3)
                iconButton.frame = CGRect(x: 0, y: 80, width: itemHeight , height: itemHeight )
            }
        
        let listH = itemHeight * CGFloat(self.listBar.subviews.count)
        self.listBar.frame = CGRect(x: 0, y: self.tarBar.frame.origin.y - listH, width: width, height: listH)
        
    }
}
