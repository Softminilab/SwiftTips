//
//  ViewController.swift
//  SwiftTips
//
//  Created by kare on 2018/4/4.
//  Copyright © 2018年 kare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        “在项目的 Build Settings 中，找到 Swift Compiler - Custom Flags，并在其中的 Other Swift Flags 加上 -D FREE_VERSION 就可以了”
//        条件编译
        #if FREE_VERSION
            print("吃饭")
        #else
            print("不吃饭")
        #endif
        
        var obj: Any = "232"
        synchronizing(obj) {
            print(obj)
        }
        obj = "2r3234"
        print(obj)
        
        for _ in 0...10 {
            print(arc4random_uniform(10) + 1)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func synchronizing(_ lockAny: Any, closure: () -> ()) {
        // Begin synchronizing
        objc_sync_enter(lockAny)
        closure()
        // End synchronizing
        objc_sync_exit(lockAny)
    }
    
    //    open: 如果方法和属性需要在其他框架被使用或者被继承，就需要使用open
    //    public: 只限于当前框架使用
    //    internal: 默认访问级别
    //    fileprivate: 仅限于当前文件中访问
    //    private: 私有访问级别
    
    func printLog<T>(_ msg: T, file:String = #file, line: Int = #line, method: String = #function) {
        print("\((msg as! NSString).lastPathComponent) || \(line) || \(method) || \(file)")
    }
}

