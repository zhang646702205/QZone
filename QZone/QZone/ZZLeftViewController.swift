//
//  ZZLeftViewController.swift
//  QZone
//
//  Created by xinghuo on 16/5/27.
//
//

import UIKit

class ZZLeftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.red
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        print(size)
        if size.width > 768 { // 横屏
            self.view.frame = CGRect(x: 0, y: 0, width: 210, height: size.height)
        } else {
            self.view.frame = CGRect(x: 0, y: 0, width: 70, height: size.height)
        }
        super.viewWillTransition(to: size, with: coordinator)
    }
//    override func willRotateToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
//        print("----------")
//        let frame = self.parentViewController!.view.frame
//        
//        print(frame)
//        
//        if frame.size.width > 768 {
//            self.view.frame = CGRectMake(0, 0, 100, 1024)
//        } else {
//            self.view.frame = CGRectMake(0, 0, 50, 768)
//        }
//        
//        
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
