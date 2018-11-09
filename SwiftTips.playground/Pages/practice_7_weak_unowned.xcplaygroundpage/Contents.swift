//: [Previous](@previous)

import Foundation

// 使用 unowned 设置以后，就算对象被释放了，他还是会保持对被已释放了的对象的一个 “无效的” 引用，它不是 optional 值。也不会被指向 nil,所以在访问是会挂掉
// 使用 weak 设置后，对象被释放了，该对象就会被设置为 nil。（所以被weak修饰的值一定要是一个 Optinal 值）


// unowned 如果能够确定在访问时不会已被释放
// weak 如果存在被释放的可能
class PracticeWeak {
    let name: String
    lazy var printName: () -> () = {
        [weak self] in
        if let strongSelf = self {
            print(strongSelf.name)
        }
    }
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("self.name \(self.name)")
    }
}

var p: PracticeWeak? = PracticeWeak(name: "DaBao")
p!.printName()
p = nil

//autoreleasepool {
//    print("cccc")
//}

// 值类型被复制的时机是值类型内容发生改变时


let arr = NSArray(object: "Value")
let rs = unsafeBitCast(CFArrayGetValueAtIndex(arr, 0), to: CFString.self)
debugPrint(rs)

let name: String = "10"
debugPrint(name)
print(name)

type(of: name)

let data = Date()
let any = object_getClass(data)
print(any)
debugPrint(any)

//func dodo(d:() -> ()) {
//
//}
//
//dodo {
//
//}
struct MyOption: OptionSet {
    let rawValue: UInt
    static let none = MyOption(rawValue: 0)
    static let option1 = MyOption(rawValue: 1)
}

MyOption.init(rawValue: 1).rawValue
MyOption.option1.rawValue
