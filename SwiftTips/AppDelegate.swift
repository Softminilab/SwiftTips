//
//  AppDelegate.swift
//  SwiftTips
//
//  Created by kare on 2018/4/4.
//  Copyright © 2018年 kare. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        print("-------\n")
//        var number = 10988
//        repeat {
//            let ressult = number%10
//            number /= 10
//        } while number > 0
        
        // UseWhere
//        let f = UseWhere.show // let f = { (object: UseWhere) in (object.show) }
//        let object = UseWhere()
//        f(object)()
        
//        let f = UseEquatable.saveItems
//        let object = UseEquatable()
//        f(object)()
        
//        let f = MCSequence.iteratorItem
//        let object = MCSequence()
//        f(object)()
        
//        let f = RecursionEnum.showResult
//        let object = RecursionEnum()
//        f(object)()
        
        let f = Example.showResult
        let object = Example()
        f(object)()
        return true
        
    }
}

