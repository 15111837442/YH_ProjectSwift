//
//  YHCommon.swift
//  YHSwiftProject
//
//  Created by LYH on 2018/11/5.
//  Copyright © 2018年 LYH. All rights reserved.
//

import UIKit

/// 屏幕的宽度
let KscreenWidth = UIScreen.main.bounds.width
/// 屏幕的高度
let KscreenHeight = UIScreen.main.bounds.height
//判断是否是iphoneX
let IsIphoneX = isIPhoneXSeries() ? true : false
//nav高度
let SafeAreaTopHeight : CGFloat = isIPhoneXSeries()  ? 88.0 : 64.0
//底部安全区距离
let SafeAreaBoHttomHeight : CGFloat = isIPhoneXSeries() ? 34.0 : 0.0
//tabbar 高度
let SafeAreaTabBarHeight : CGFloat = isIPhoneXSeries() ? 84.0 : 50.0



// MARK: -------------- 颜色 --------------
/**16进制颜色*/
public func HexColor(hexstring :String) -> UIColor {
    return UIColor.HexColor(hex: hexstring)
}
/**RGB颜色*/
public func RGBColor(r:CGFloat,g:CGFloat,b:CGFloat) -> UIColor {
    return UIColor.init(r: r, g: g , b: b )
}
/**
 *鉴于iPhone X/XS/XR/XS Max底部都会有安全距离，所以可以利用safeAreaInsets.bottom > 0.0来判断是否是iPhone X/XS/XR/XSMax。
 */
private func isIPhoneXSeries() -> Bool {
    var  IPhoneXSeries:Bool = false
    
    if UIDevice.current.userInterfaceIdiom != UIUserInterfaceIdiom.phone {
        return IPhoneXSeries
    }
    if #available(iOS 11.0, *) {
        let kwindow = UIApplication.shared.delegate?.window
        let Botton = kwindow.unsafelyUnwrapped?.safeAreaInsets.bottom
        let NewBotton = Int (Botton!)
        print(NewBotton)
        if  NewBotton > 0{
            IPhoneXSeries = true
        }
    }
    return IPhoneXSeries
}
