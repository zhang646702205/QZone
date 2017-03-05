//
//  QZone.swift
//  QZone
//
//  Created by xinghuo on 16/5/27.
//
//

import UIKit

//#define  isLandscape UIScreen.mainScreen().bounds.width > 768 ? true : false

let itemHeight:CGFloat = 70;

func isLandscape() -> Bool{
    return UIScreen.main.bounds.width > ((screenWidth() < screenHeight() ? screenWidth() : screenHeight()))
}

func screenHeight() -> CGFloat {
    return UIScreen.main.bounds.height
}

func screenWidth() -> CGFloat {
    return UIScreen.main.bounds.width
}


 let QZListViewDidClickButton = "QZListViewDidClickButton"
