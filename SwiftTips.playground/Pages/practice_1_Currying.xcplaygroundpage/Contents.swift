import Foundation
import UIKit

// This is Currying practice
func addNumber(_ a: Int) -> (Int) -> Int {
    return {
        number in
        return a + number
    }
}

let f = addNumber(10)
let rs = f(10)

// ******************************************

protocol TargetAction {
    func performAction()
}

struct TargetActionWarpper<T: AnyObject>: TargetAction {
    weak var target: T?
    var action: (T) ->() -> ()
    
    func performAction() {
        if let t = target {
            action(t)()
        }
    }
}

enum ControlEvent {
    case Touchupinside
    case TouchMove
}

class Control {
    var actions = [ControlEvent: TargetAction]()
    
    func setTarget<T: AnyObject>(target: T, action: @escaping (T) -> () -> (), event: ControlEvent) {
        actions[event] = TargetActionWarpper(target: target, action: action)
    }
    
    func removeTargetWith(_ event: ControlEvent) {
        actions[event] = nil
    }
    
    func performActionWithEvent(_ event: ControlEvent) {
        actions[event]?.performAction()
    }
}

class PerformVC {
    func invoked() {
        let btn = Control()
        btn.setTarget(target: self, action: PerformVC.onTapBtn, event: ControlEvent.Touchupinside)
        btn.performActionWithEvent(ControlEvent.Touchupinside)
    }
    
    func onTapBtn() {
        print("perform action")
    }
}

let pf = PerformVC().invoked()

