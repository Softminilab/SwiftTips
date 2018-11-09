//: [Previous](@previous)

import Foundation

// associated 可用用于给类增加属性

class HRG {}

private var key: Void?
extension HRG {
    var title: String? {
        get {
            if let title = objc_getAssociatedObject(self, &key) as? String {
                return title
            }
            return ""
        }
        
        set {
            objc_setAssociatedObject(self, &key, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}
let hrg = HRG()
hrg.title = "HRG.hrg"
print(hrg.title)
