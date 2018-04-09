//
//  Example.swift
//  SwiftTips
//
//  Created by kare on 2018/4/8.
//  Copyright © 2018年 kare. All rights reserved.
//

import UIKit

struct Books: Sequence, IteratorProtocol {
    let names: [String]
    private var idx = 0
    
    init(names: [String]) {
        self.names = names
    }
    
    mutating func next() -> String? {
        guard idx < names.count else {
            return nil
        }
        defer {
            idx += 1
        }
        return names[idx]
    }
}

//struct Book: IteratorProtocol {
//    let names: [String]
//    var idx = 0
//    init(_ names: [String]) {
//        self.names = names
//    }
//
//    mutating func next() -> String? {
//        guard idx < names.count else {
//            return nil
//        }
//        defer {
//            idx += 1
//        }
//        return names[idx]
//    }
//}

class Example: NSObject {
    func showResult() {
        for result in Books(names: ["A", "B", "C", "D"]) {
            print(result)
        }
    }
}
