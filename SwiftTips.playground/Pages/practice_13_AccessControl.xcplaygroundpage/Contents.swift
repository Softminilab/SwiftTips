//: [Previous](@previous)

import Foundation
// private 只能在当前作用域或者同一文件中同一类型的作用域使用
// fileprivate 只能在同一个文件中访问
// internal 默认访问级别
// public 多见于三方库内
// open 多见于三方库内

// 访问级别从上到下，依次递增。

/*
 public 和 open 的区别：
 被 open 标记的内容才能在别的框架中被重写和继承，如果只是希望用户使用方法和类型，而不希望他们继承或者重写，就可以将其限定为 Public 而非 Open
 */
class Myclass {
    private(set) var name: String?
    
    func setName(_ name: String) {
        self.name = name
    }

    func getName() -> String {
        return self.name ?? ""
    }
}

class TestClass {
    class func test() {
        let mc = Myclass()
        mc.setName("吃饭") // ok
//        mc.name = "Eat" // error
        print("mc.name \(mc.name ?? "")")
    }
}

TestClass.test()

extension Int {
    func times(f:(Int) -> ()) {
        for i in 1...self {
            f(i)
        }
    }
}

3.times { idx in
    print(idx)
}
