//
//  RNMultithreadViewController.swift
//  RNBoxue
//
//  Created by 婉卿容若 on 16/8/12.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//

import UIKit

class RNMultithreadViewController: UIViewController {
    
    // MARK: - properties - 即定义的各种属性
    @IBOutlet weak var imageView01: UIImageView!
    
    @IBOutlet weak var imageView02: UIImageView!
    
    @IBOutlet weak var imageView03: UIImageView!
    
    @IBOutlet weak var imageView04: UIImageView!
    
    let imageUrls = [
        "https://dn-boxueio.qbox.me/image1-big.jpg",
        "https://dn-boxueio.qbox.me/image2-big.jpg",
        "https://dn-boxueio.qbox.me/image3-big.jpg",
        "https://dn-boxueio.qbox.me/image4-big.jpg"
    ]
    
    let queue = NSOperationQueue() // operation 队列
    
    // MARK: -  Life cycle - 即生命周期
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "多线程"
        
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

extension RNMultithreadViewController{
    
}

// MARK: - Private Methods - 即私人写的方法

extension  RNMultithreadViewController{
    
}

// MARK: - Event response - 按钮/手势等事件的回应方法

extension  RNMultithreadViewController{
    
    @IBAction func downlaodAction(sender: UIButton) {
        
        /*
         // 这样下载会阻塞主线程
         self.imageView01.image = Downloader.downloadImageWithUrl(self.imageUrls[0])
         self.imageView01.clipsToBounds = true
         
         self.imageView02.image = Downloader.downloadImageWithUrl(self.imageUrls[1])
         self.imageView02.clipsToBounds = true
         
         self.imageView03.image = Downloader.downloadImageWithUrl(self.imageUrls[2])
         self.imageView03.clipsToBounds = true
         
         self.imageView04.image = Downloader.downloadImageWithUrl(self.imageUrls[3])
         self.imageView04.clipsToBounds = true
         */
        
        // GCD
        /*
         // 创建新的串行队列
         // 创建一个串行队列 - 异步执行 -- 创建一个新的线程(主线程以外)
         // 参数一:线程名 参数二: 线程类型
         let serialQueue1 = dispatch_queue_create("com.zhengwenxiang", DISPATCH_QUEUE_SERIAL)
         dispatch_async(serialQueue1) { // 完成顺序1234
         let img1 =  Downloader.downloadImageWithUrl(self.imageUrls[0])
         // 在主线程中更新 UI
         dispatch_async(dispatch_get_main_queue(), {
         self.imageView01.image = img1
         })
         
         let img2 =  Downloader.downloadImageWithUrl(self.imageUrls[1])
         // 在主线程中更新 UI
         dispatch_async(dispatch_get_main_queue(), {
         self.imageView02.image = img2
         })
         //
         //            let img3 =  Downloader.downloadImageWithUrl(self.imageUrls[2])
         //            // 在主线程中更新 UI
         //            dispatch_async(dispatch_get_main_queue(), {
         //                self.imageView03.image = img3
         //            })
         //
         //            let img4 =  Downloader.downloadImageWithUrl(self.imageUrls[3])
         //           //  在主线程中更新 UI
         //            dispatch_async(dispatch_get_main_queue(), {
         //                self.imageView04.image = img4
         //            })
         }
         
         
         let serialQueue2 = dispatch_queue_create("com.zhengwenxiang02", DISPATCH_QUEUE_SERIAL)
         dispatch_async(serialQueue2) {
         
         let img3 =  Downloader.downloadImageWithUrl(self.imageUrls[2])
         // 在主线程中更新 UI
         dispatch_async(dispatch_get_main_queue(), {
         self.imageView03.image = img3
         })
         
         let img4 =  Downloader.downloadImageWithUrl(self.imageUrls[3])
         // 在主线程中更新 UI
         dispatch_async(dispatch_get_main_queue(), {
         self.imageView04.image = img4
         })
         }
         */
        
        /*
         // 创建并行队列执行 - 并发执行 -- 根据系统资源情况创建 n 个新线程
         // 参数一: 优先级 DISPATCH_QUEUE_PRIORITY_HIGH, DISPATCH_QUEUE_PRIORITY_DEFAULT, DISPATCH_QUEUE_PRIORITY_LOW, DISPATCH_QUEUE_PRIORITY_BACKGROUND
         let conCurrentQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0) // 直接获取系统的 global 队列,亦可以自己创建 dispatch_queue_create("com.zhengwenxiang02", DISPATCH_QUEUE_CONCURRENT)
         
         dispatch_async(conCurrentQueue) {
         let img1 =  Downloader.downloadImageWithUrl(self.imageUrls[0])
         // 在主线程中更新 UI
         dispatch_async(dispatch_get_main_queue(), {
         self.imageView01.image = img1
         })
         
         //            let img2 =  Downloader.downloadImageWithUrl(self.imageUrls[1])
         //            // 在主线程中更新 UI
         //            dispatch_async(dispatch_get_main_queue(), {
         //                self.imageView02.image = img2
         //            })
         //
         //            let img3 =  Downloader.downloadImageWithUrl(self.imageUrls[2])
         //            // 在主线程中更新 UI
         //            dispatch_async(dispatch_get_main_queue(), {
         //                self.imageView03.image = img3
         //            })
         //
         //            let img4 =  Downloader.downloadImageWithUrl(self.imageUrls[3])
         //            // 在主线程中更新 UI
         //            dispatch_async(dispatch_get_main_queue(), {
         //                self.imageView04.image = img4
         //            })
         }
         
         dispatch_async(conCurrentQueue) {
         let img2 =  Downloader.downloadImageWithUrl(self.imageUrls[1])
         // 在主线程中更新 UI
         dispatch_async(dispatch_get_main_queue(), {
         self.imageView02.image = img2
         })
         
         }
         
         dispatch_async(conCurrentQueue) {
         let img3 =  Downloader.downloadImageWithUrl(self.imageUrls[2])
         // 在主线程中更新 UI
         dispatch_async(dispatch_get_main_queue(), {
         self.imageView03.image = img3
         })
         }
         
         dispatch_async(conCurrentQueue) {
         let img4 =  Downloader.downloadImageWithUrl(self.imageUrls[3])
         // 在主线程中更新 UI
         dispatch_async(dispatch_get_main_queue(), {
         self.imageView04.image = img4
         })
         }
         */
        
        // operation queue
        // 基于 GCD 的面向对象封装
        // NSOperationQueue : 队列,添加到其中的任务会并行执行; 不遵循先进先出原则;不在是一个 closure 而是一个 NSOperation 类(抽象类,不能直接生成对象)
        // 所以 iOS基于 NSOperation 实现了两个具象类 1.NSBlockOperation; 2. NSInvocationOperation(iOS8.1后废除)

        queue.addOperationWithBlock {
            let img1 =  Downloader.downloadImageWithUrl(self.imageUrls[0])
            NSOperationQueue.mainQueue().addOperationWithBlock({
                self.imageView01.image = img1
                self.imageView01.clipsToBounds = true
            })
        }
        
        
        let op2 = NSBlockOperation {
            let img2 =  Downloader.downloadImageWithUrl(self.imageUrls[1])
            
            NSOperationQueue.mainQueue().addOperationWithBlock({
                self.imageView02.image = img2
                self.imageView02.clipsToBounds = true
            })
        }
        
        op2.completionBlock = {print("image2 downloaded!")}
       // queue.addOperation(op2) // 加入队列
        
        
        let op3 = NSBlockOperation {
            let img3 =  Downloader.downloadImageWithUrl(self.imageUrls[2])
            
            NSOperationQueue.mainQueue().addOperationWithBlock({
                self.imageView03.image = img3
                self.imageView03.clipsToBounds = true
            })
        }
        op3.completionBlock = {print("image3 cancel:\(op3.cancelled)")}
      //  queue.addOperation(op3)
        let op4 = NSBlockOperation {
            let img4 =  Downloader.downloadImageWithUrl(self.imageUrls[3])
            
            NSOperationQueue.mainQueue().addOperationWithBlock({
                self.imageView04.image = img4
                self.imageView04.clipsToBounds = true
            })
        }
        
        op4.completionBlock = {print("image4 downloaded!")}
       // queue.addOperation(op4)
        
        // 任务控制
        op3.addDependency(op4) // 关联---op3始终在op4后
        op2.addDependency(op3)
        
        // 添加关系后重新添加任务..记得注释掉上面的添加操作
        queue.addOperation(op4)
        queue.addOperation(op3)
        queue.addOperation(op2)
    }
    
    @IBAction func clearAction(sender: UIButton) {
        
        self.imageView01.image = nil
        self.imageView02.image = nil
        self.imageView03.image = nil
        self.imageView04.image = nil
        
        NSURLCache.sharedURLCache().removeAllCachedResponses()
    }
    
    
    @IBAction func cancelAction(sender: AnyObject) {
        
        self.queue.cancelAllOperations()
    }
}

// MARK: - Delegates - 即各种代理方法


