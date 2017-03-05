//
//  ZZListView.swift
//  QZone
//
//  Created by xinghuo on 16/5/27.
//
//

import UIKit

class ZZListView: UIView {
    
    var selectedBtn : ZZListButton?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let firstBtn = addButtons("tab_bar_feed_icon", title: "QQ空间")
        btnClick(firstBtn)
        addButtons("tab_bar_friend_icon", title: "好友")
        addButtons("tab_bar_passive_feed_icon", title: "QQ空间")
        addButtons("tab_bar_pic_wall_icon", title: "QQ空间")
        addButtons("tab_bar_e_album_icon", title: "QQ空间")
        addButtons("tab_bar_e_more_icon", title: "QQ空间")
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    fileprivate func addButtons(_ imageName: String , title: String) -> ZZListButton {
        let button = ZZListButton(type: .custom)
        button.setTitle(title, for: UIControlState())
        button.setImage(UIImage(named: imageName), for: UIControlState())
        button.addTarget(self, action: #selector(ZZListView.btnClick(_:)), for: .touchUpInside)
        self.addSubview(button)
        return button
        
    }
    
    func btnClick(_ sender : ZZListButton ) {
        self.selectedBtn?.isEnabled = true
        sender.isEnabled = false
        self.selectedBtn = sender
    
        NotificationCenter.default.post(name: Notification.Name(rawValue: QZListViewDidClickButton), object: sender)
    }
    override func layoutSubviews() {
        super.layoutSubviews() // 这句话一定要记得调用
        let width = self.bounds.width
//        if isLandscape() { // 横屏
            for i in 0   ..< self.subviews.count {
                let btn = self.subviews[i]
                btn.tag = i;
                btn.frame = CGRect(x: 0, y: itemHeight * CGFloat(i), width: width, height: itemHeight)
            }
//        } else {
//            for var i = 0  ; i < self.subviews.count ; i++ {
//                let btn = self.subviews[i] as? ZZListButton
//                btn?.frame = CGRectMake(0, itemHeight * CGFloat(i), width, itemHeight)
//            }
//        }
    }

}
