//
//  UseWhere.swift
//  SwiftTips
//
//  Created by kare on 2018/4/4.
//  Copyright © 2018年 kare. All rights reserved.
//

import UIKit

class UseWhere: NSObject {
    
    func show() {
        matchName()
        forWhere()
    }
    
    func matchName() {
        let names = ["Apple", "Google", "Baidu", "AliBaba"]
        names.forEach {
            switch $0 {
                case let x where x.hasPrefix("A"):
                    print("包含A的是:\($0)")
                default:
                    print("不包含A的是:\($0)")
            }
        }
    }
    
    func forWhere() {
        // Note:4.1 compactMap 4.0 flatMap
        print("for ... in  where-----")
        let scores:[Int?] = [60, 80, 70, 90, nil, 50]
        for score in scores.compactMap({ $0 }) where score > 70 {
            print("这些都是及格分数:\(score)")
        }
    }
}
