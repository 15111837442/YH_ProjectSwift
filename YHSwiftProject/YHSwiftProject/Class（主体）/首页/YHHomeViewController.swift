//
//  YHHomeViewController.swift
//  YHSwiftProject
//
//  Created by LYH on 2018/11/5.
//  Copyright © 2018年 LYH. All rights reserved.
//

import UIKit

class YHHomeViewController: YHBaseViewController ,UITableViewDelegate , UITableViewDataSource{
  

    override func viewDidLoad() {
        super.viewDidLoad()
        //刷新tableview
        YHtableview.reloadData()
    
    }
    //几组
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
     //几行
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
     //加载cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    //点击cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //tip swift Bool true 和 false
        //点击cell 动画效果
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
/**懒加载创建Tableview*/
    lazy var YHtableview: UITableView = {
        let tableview = UITableView.init(frame: CGRect.init(x: 0.0, y: SafeAreaTopHeight, width: KscreenWidth, height: KscreenHeight-SafeAreaTopHeight), style: .grouped)
        
        //xib 注册cell xib 用view
//        tableview.register(UINib(nibName: "TestCell", bundle: nil), forCellReuseIdentifier: "cellId")
       
        //设置颜色
        tableview.backgroundColor = UIColor.white
        tableview.delegate = self
        tableview.dataSource = self
        tableview.rowHeight = 50
        tableview.sectionHeaderHeight = 40
        tableview.sectionFooterHeight = 0
        //分割线撑满
        tableview.separatorInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0 )
        //去除多余分割线
        tableview.tableFooterView = UIView.init(frame: CGRect.init())
        view.addSubview(tableview)
        return tableview
    }()
    
    
}
