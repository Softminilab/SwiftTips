//
//  MCSequence.swift
//  SwiftTips
//
//  Created by kare on 2018/4/6.
//  Copyright © 2018年 kare. All rights reserved.
//

import UIKit

class MCSequence: NSObject {
    struct CountDown: IteratorProtocol, Sequence {
        
        var idx: Int
        
        mutating func next() -> Int? {
            if idx == 0 {
                return nil
            }else {
                idx -= 1
                return idx
            }
        }
    }
    
    func iteratorItem() {
        let c = CountDown(idx: 3)
        
        for i in c {
            print(i)
        }
    }
}
