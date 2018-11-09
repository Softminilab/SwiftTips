//: [Previous](@previous)

import Foundation

// No Lazy
let numbers = 1...3
let rs = numbers.map { (number) -> Int in
    print("number is \(number)")
    return number * 2
}

print("parper process ....")
for number in rs {
    print("result number is \(number)")
}
print("end ....\n\n\n")

// Lazy
let data = 1...3
let result = data.lazy.map { (data) -> Int in
    print("data is \(data)")
    return data * 2
}

print("data parper process ....")
for data in result {
    print("result data is \(data)")
}
print("data end ....")
