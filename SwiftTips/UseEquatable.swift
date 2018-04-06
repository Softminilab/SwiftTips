//
//  UseEquatable.swift
//  SwiftTips
//
//  Created by kare on 2018/4/5.
//  Copyright © 2018年 kare. All rights reserved.
//

import UIKit

struct TodoItem: Equatable {
    let uuid: Int
    let name: String
    init(_ uuid: Int, _ name: String) {
        self.uuid = uuid
        self.name = name
    }
    
    static func ==(lhs: TodoItem, rhs: TodoItem) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}

class UseEquatable: NSObject {
    func saveItems() {
        let item = TodoItem(10, "Apple")
        let item1 = TodoItem(11, "Apple")
        let item2 = TodoItem(12, "Apple")
        let item3 = TodoItem(11, "Apple")
        
        let testItem = TodoItem(11, "Apple")
        let testItme = [item, item1, item2 ,item3]
        testItme.forEach {
            if $0 == testItem {
                print("已经存在\($0.uuid)")
            }
        }
    }
}
