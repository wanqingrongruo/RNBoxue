//
//  ViewController.swift
//  RNBoxue
//
//  Created by 婉卿容若 on 16/8/12.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - properties - 即定义的各种属性
    
    // MARK: - const
    
    let MainScreenBounds = UIScreen.mainScreen().bounds  //当前屏幕bounds
    let WIDTH_SCREEN:CGFloat = UIScreen.mainScreen().bounds.size.width  //获取当前屏幕宽度
    let HEIGHT_SCREEN:CGFloat = UIScreen.mainScreen().bounds.size.height  //获取当前屏幕高度

    var im: UIImageView!
    
    var dataSource = ["多线程"]
    var tableView: UITableView!
    
    // MARK: -  Life cycle - 即生命周期
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "所有课程"
        
        setUpTableView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    deinit{
        
        
    }
    
}

// MARK: - Public Methods - 即系统提供的方法

extension ViewController{
    
}

// MARK: - Private Methods - 即私人写的方法

extension  ViewController{
    
    func setUpTableView() {
        
        
        tableView = UITableView(frame: CGRectMake(0, 0, WIDTH_SCREEN, HEIGHT_SCREEN), style: UITableViewStyle.Plain)
        tableView.backgroundColor = UIColor.whiteColor()
        tableView.dataSource = self
        tableView.delegate = self
        // tableView.separatorStyle = UITableViewCellSeparatorStyle.None
       // tableView.tableFooterView = UIView(frame: CGRectZero)
        tableView.rowHeight = 64
        tableView.contentInset = UIEdgeInsetsMake(-60, 0, 0, 0)
        
      //  tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
        
        view.addSubview(tableView)
        
        im = UIImageView(image: UIImage(named: "IMG_0893.JPG"))
        im.frame = CGRectMake(0, 0, WIDTH_SCREEN, 300)
        tableView.tableHeaderView = im

    }

}

// MARK: - Event response - 按钮/手势等事件的回应方法

extension  ViewController{
    
}

// MARK: - Delegates - 即各种代理方法


// MARK: - UITableViewDelegate && UITableViewDataSoure

extension ViewController:UITableViewDelegate, UITableViewDataSource{
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return 44
//    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cellIdentifier")
        
        if  cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cellIdentifier")
        }
        
        cell?.textLabel?.text = dataSource[indexPath.row]
        
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        switch indexPath.row {
        case 0:
            let multithread = RNMultithreadViewController(nibName: "RNMultithreadViewController", bundle: nil)
            navigationController?.pushViewController(multithread, animated: true)
        default:
            break
        }
    }
}

