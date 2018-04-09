//
//  RecursionEnum.swift
//  SwiftTips
//
//  Created by kare on 2018/4/8.
//  Copyright © 2018年 kare. All rights reserved.
//

import UIKit

enum ArithmeticExpression {
    case number(Int)
    indirect case addToNumber(ArithmeticExpression, ArithmeticExpression)
    indirect case multip(ArithmeticExpression, ArithmeticExpression)
}

class RecursionEnum: NSObject {

    func showResult() {
        let number = ArithmeticExpression.number(10)
        let number2 = ArithmeticExpression.number(10)
        let multip = ArithmeticExpression.multip(number, number2)
        let add = ArithmeticExpression.addToNumber(number2, number2)
        
        
        
        func result(_ expresssion: ArithmeticExpression) -> Int {
            switch expresssion {
            case let .number(num):
                return num
            case let .addToNumber(lhs, rhs):
                return result(lhs) + result(rhs)
            case let .multip(lhs, rhs):
                return result(lhs) * result(rhs)
            }
        }
        
        print("result(add) \(result(add))")
    }
}
