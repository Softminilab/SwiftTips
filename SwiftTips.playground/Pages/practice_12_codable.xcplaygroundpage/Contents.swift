//: [Previous](@previous)

import Foundation

struct ObjectCodabel: Codable {
    let item: Item
    
    struct Item: Codable {
        let item: [MenuItem]
        enum CodingKeys: String, CodingKey {
            case item = "MenuItem"
        }
        
        struct MenuItem: Codable {
            let name: String
            let address: String
            
            enum CodingKeys: String, CodingKey {
                case name
                case address = "Address"
            }
        }
    }
}

let str = """
{"item":{
    "MenuItem":[
        {"name": "A", "Address": "AAAAA"},
        {"name": "B", "Address": "BBBBB"},
        {"name": "C", "Address": "CCCCC"}
        ]
    }
}
"""

let data = str.data(using: .utf8)
do {
    let items = try JSONDecoder().decode(ObjectCodabel.self, from: data!)
    print("items.item.item \(items.item.item.count)")
}catch {
    print(error)
}

