//
//  CompileMark.swift
//  SwiftTips
//
//  Created by kare on 2018/4/4.
//  Copyright © 2018年 kare. All rights reserved.
//

import UIKit

/*
 三种标记方式
 MARK 是最常用的一种，便于查找代码，在相应的区块
 TODO 用于标记未完成的事物
 FIXME 也是用于标记未完成的事物
 三种标记展示出不同的效果
 请看 make.png
 使用好 编译标记 可以事半功倍，快速定位代码块
 */
class CompileMark: NSObject {
    
    // MARK: 标记
    func thing1() {
        
    }
    
    // TODO: 没做完的事情
    func thing2() {
        print("todo ...")
    }
    
    // FIXME: 没做完的事，继续做
    func thing3() {
        print("FIXME ...")
    }
}
