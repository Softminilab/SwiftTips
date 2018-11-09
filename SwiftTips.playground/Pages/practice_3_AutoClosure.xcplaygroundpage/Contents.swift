//: [Previous](@previous)

import Foundation
import UIKit

func logIfTrue(_ rs: @autoclosure() -> Bool) {
    if rs() {
        print("True")
    }
}
logIfTrue( 2>1 )

var number: Optional<Int>
var noNumber: Int = 10
let rs = number ?? noNumber

func asssertC(predicate: () -> Bool) {
    if !predicate() {
        //        abort()
        print("Crash ...")
    }else {
        print("Normal ...")
    }
}

func asssertAutoClosure(predicate: @autoclosure () -> Bool) {
    if !predicate() {
//        abort()
        print("Crash ...")
    }else {
        print("Normal ...")
    }
}

asssertAutoClosure(predicate: 3 == 4)
asssertC { 3 == 4 }

func hh(rhs: Bool, lhs: @autoclosure () -> Bool) -> Bool {
    return rhs ? lhs() : false
}


let a: Bool = 3==3
let b: Bool = 4==1
if hh(rhs: a, lhs: b) {
    print("Is's Ok!!")
}else {
    print("No")
}

// ??
func doubleQuesitionImplement<T>(optional: T?, defaultValue: @autoclosure () throws -> T) rethrows -> T {
//    if let t = optional {
//        return t
//    }
//    return try! defaultValue()
    switch optional {
    case .some(let value): return value
    case .none: return try! defaultValue()
    }
}

do {
    let rs = try doubleQuesitionImplement(optional: ["o"], defaultValue: [",", "??"])
    print("\n?? value \(rs)\n")
}catch {
    
}

// &&
public func doubleYu (lhs: Bool, rhs: @autoclosure () throws -> Bool) rethrows -> Bool {
    return lhs ? try rhs() : false
}

do {
    let a = true
    let b = false
    let rs = doubleYu(lhs: a, rhs: b)
    print("&& value is \(rs)\n")
}catch {
    
}

// ||
public func doubleHuo (lhs: Bool, rhs: @autoclosure () throws -> Bool) rethrows -> Bool {
    return lhs ? true : try rhs()
}

do {
    let a = false
    let b = false
    let rs = doubleHuo(lhs: a, rhs: b)
    print("|| value is \(rs)\n")
}catch {
    
}

func doWork(work: () ->() ) {
    work()
}

doWork {
    print("c")
}

func escapingWork(work: @escaping(Any) -> ()) {
    work("work")
}

escapingWork { (str) in
    print(str)
}

let playClosure = { (str: String) -> ()? in
    print(str)
}

let hh = playClosure("show string")
print(hh!)

precedencegroup DotPrecedence {
    associativity: none
    higherThan: MultiplicationPrecedence
}

infix operator +*: DotPrecedence

func +*(lhs: CGPoint, rhs: CGPoint) -> CGFloat {
    return lhs.x * rhs.x + lhs.y * rhs.y
}

let p = CGPoint(x: 10, y: 10)
let o = CGPoint(x: 20, y: 20)

let finalRS = p +* o

protocol A {}
protocol B {}
typealias unionPro = A & B

class C: unionPro {
    
}

pow(6, 3)

print("----------\n")

let interval = "a"..."z"
print("interval \(interval)")
interval.contains("Z")

//let asc = \0...~
//print(asc)

//for a in asc {
//    print(a)
//}

// 计算属性和观察属性，两者只能存其一
// 计算属性只提供：get，set
// 观察属性只提供：willSet，didSet


