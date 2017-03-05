//
//  ViewController.swift
//  QZone
//
//  Created by xinghuo on 16/5/27.
//
//

import UIKit

let landscapeW : CGFloat = 210;
let portraitW : CGFloat = landscapeW / 3;
let landscapeH : CGFloat = min(UIScreen.main.bounds.width, UIScreen.main.bounds.height)
let portraitH : CGFloat = max(UIScreen.main.bounds.width, UIScreen.main.bounds.height)



class ViewController: UIViewController {

    lazy var left: ZZLeftViewController = ZZLeftViewController()
    
    lazy var leftView : ZZLeftView = ZZLeftView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
//        self.left = ZZLeftViewController()
//        self.addChildViewController(left)
////        left.view.frame = CGRectMake(0, 0, 30, 100)
//        self.view.addSubview(left.view)
//        leftView.backgroundColor = UIColor.redColor()
        self.view.addSubview(self.leftView)
       
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.viewDidRecieveNotification(_:)), name: NSNotification.Name(rawValue: QZListViewDidClickButton), object: nil)
        // 这个 方法 可以直接调用
        willRotate(to: self.interfaceOrientation, duration: 0.5)
        

//        let width =  CGRectGetWidth(self.view.frame)
//        let height =  CGRectGetHeight(self.view.frame)
//        let vc = self.transitionCoordinator()!
        
//                viewWillTransitionToSize(CGSize(width: 1000, height:50 ),withTransitionCoordinator:nil )
    }

    override func willRotate(to toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval) {
        
        if toInterfaceOrientation == UIInterfaceOrientation.landscapeLeft || toInterfaceOrientation == UIInterfaceOrientation.landscapeRight {
            self.leftView.frame = CGRect(x: 0, y: 0, width: landscapeW, height: landscapeH)
        } else {
            self.leftView.frame = CGRect(x: 0, y: 0, width: portraitW, height: portraitH)
        }
    }
// MARK notification
    
    func viewDidRecieveNotification(_ noti : Notification) {
        print(noti)
        self.view.backgroundColor = UIColor(red: (CGFloat(arc4random()%255) / 255.0),
                                            green:(CGFloat(arc4random()%255) / 255.0),
                                            blue:(CGFloat(arc4random()%255) / 255.0), alpha: 1.0)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    // 初始 要设置一个 方向 配合 下面方向 使用
    
    //  该方法直接调用 会有 问题
//       override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
//    
//            print(coordinator)
//            print(size)
//            if size.width > 768 { // 横屏
//                self.leftView.frame = CGRectMake(0, 0, 210, size.height)
//            } else {
//                self.leftView.frame = CGRectMake(0, 0, 70, size.height)
//            }
//        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
//        }
//
//    override func shouldAutorotate() -> Bool {
//        return true
//    }
//    
//    override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
//        return self.interfaceOrientation
//    }
}

