//
//  Downloader.swift
//  RNBoxue
//
//  Created by 婉卿容若 on 16/8/12.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//  容若的简书地址:http://www.jianshu.com/users/274775e3d56d/latest_articles
//  容若的新浪微博:http://weibo.com/u/2946516927?refer_flag=1001030102_&is_hot=1


import Foundation
import UIKit

class Downloader {
    
    class func downloadImageWithUrl(url: String) -> UIImage! {
        
        let data = NSData(contentsOfURL: NSURL(string: url)!)
        
        return UIImage(data: data!)
    }
}