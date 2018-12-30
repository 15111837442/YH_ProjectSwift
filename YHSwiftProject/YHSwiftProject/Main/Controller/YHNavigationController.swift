//
//  YHNavigationController.swift
//  YHSwiftProject
//
//  Created by LYH on 2018/11/2.
//  Copyright © 2018年 LYH. All rights reserved.
//

import UIKit

class YHNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count>0 {
           viewController.hidesBottomBarWhenPushed = true //跳转后隐藏tabbar
        }
        super.pushViewController(viewController, animated: true)
        
    }

}
