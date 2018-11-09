//: [Previous](@previous)

import Foundation
import UIKit

struct Book {
    var name: String
    var price: Double
}

let book = Book(name: "Steve jobs Legend", price: 50.0)
let rs = Mirror(reflecting: book)
for m in rs.children {
    print(String(describing: m.label))
    print(m.value)
}
print("-------------\n\n")

@objcMembers
open class BaseInfo: NSObject {
    init(dictionary: [String: Any]) {
        super.init()
        let propertyNames = self.getPropertyNames()
        for name in propertyNames {
            if let value = dictionary[name] {
                self.setValue(value, forKey: name)
            }else {
                fatalError("not found")
            }
        }
    }

    private func getPropertyNames() -> [String] {
        return Mirror(reflecting: self).children.compactMap({ $0.label })
    }
}

class Company: BaseInfo {
    var name: String?
    var address: String?
    var employeeNumbers: Double = 0.0
}

let infor: [String: Any] = ["name": "Tian Guo information.inc", "address": "Tian Guo Road", "employeeNumbers": 100]
let company = Company(dictionary: infor)
print("company.name \(company.name ?? "")")

var aNil: String? = nil
var anotherNil: String?? = aNil

var literalNil: String?? = nil

var oNil: Optional<String> = nil

var lNil: Optional<Optional<String>> = nil

