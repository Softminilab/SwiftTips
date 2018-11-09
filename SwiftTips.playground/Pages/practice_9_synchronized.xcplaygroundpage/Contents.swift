//: [Previous](@previous)

import Foundation

func synchronized(_ obj: Any, closure: () -> ()) {
    objc_sync_enter(obj)
    closure()
    objc_sync_exit(obj)
}

func test() {
    synchronized("AnyObject" as Any) {
        
    }
}

// CustomStringConvertible
