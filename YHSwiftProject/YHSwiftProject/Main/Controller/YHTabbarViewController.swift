//
//  YHTabbarViewController.swift
//  YHSwiftProject
//
//  Created by LYH on 2018/11/2.
//  Copyright © 2018年 LYH. All rights reserved.
//
import Foundation
import UIKit

class YHTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 背景色设为白色
        self.view.backgroundColor = UIColor.white
          /**设置字体大小颜色*/
        let tabBar = UITabBarItem.appearance()
        
        let attrsNormal = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10.0), NSAttributedString.Key.foregroundColor: UIColor.gray]
        let attrsSelected = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10.0), NSAttributedString.Key.foregroundColor: UIColor.red]
        tabBar.setTitleTextAttributes(attrsNormal, for: .normal)
        tabBar.setTitleTextAttributes(attrsSelected, for: .selected)
       
        
       setUpAllviewcontroller()
    }
  // MARK: ---------- 添加子控件 ----------
    func setUpAllviewcontroller() -> Void {
    setChildViewController(childController: YHHomeViewController(), title: "首页", norImage: "main_tab_item_icon1_normal", selectedImage: "main_tab_item_icon1_checked")
         setChildViewController(childController: YHClassiFicationVC(), title: "分类", norImage: "main_tab_item_icon2_normal", selectedImage: "main_tab_item_icon2_checked")
         setChildViewController(childController: YHShopCartViewController(), title: "购物车", norImage: "main_tab_item_icon3_normal", selectedImage: "main_tab_item_icon3_checked")
         setChildViewController(childController: YHMyViewController(), title: "我的", norImage: "main_tab_item_icon4_normal", selectedImage: "main_tab_item_icon4_checked")
    }
    
    
// MARK: --------- 初始化子控制器----------
    private func setChildViewController(childController: UIViewController,title:String,norImage:String,selectedImage:String){
      childController.tabBarItem.title = title
      //设置Tabbar 标题位置
//      childController.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -3)
    childController.tabBarItem.image = UIImage(named: norImage)
   //去除图片渲染
    childController.tabBarItem.selectedImage = UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal)
    //设置 NavigationController
    let nav = YHNavigationController.init(rootViewController: childController)
        self.addChild(nav)
        childController.title = title
    }
    
}
