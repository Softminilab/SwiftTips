import Foundation

class ReverseIterator<T>: IteratorProtocol {
    
    typealias Element = T
    var array: [T]
    var index = 0
    
    init(array: [Element]) {
        self.array = array
        index = array.count - 1
    }
    
    func next() -> Element? {
        if index < 0 {
            return nil
        }
        let element = array[index]
        index -= 1
        return element
    }
}

let rvs = ReverseIterator(array: [1, 2, 3, 4, 5, 6])
while let rs = rvs.next() {
    print("Itertor -> \(rs)")
}

class ReverseSequence<T>: Sequence {
    var array: [T]
    init(array: [T]) {
        self.array = array
    }
    
    typealias Iterator = ReverseIterator<T>
    func makeIterator() -> ReverseIterator<T> {
        return ReverseIterator(array: self.array)
    }
}

let ary = [1, 2, 3, 4, 5, 6]
for (k, v) in ReverseSequence(array: ary).enumerated() {
    print("Sequence Index: \(k) value: \(v)")
}

var itertor = ary.makeIterator()
while let obj = itertor.next() {
    print(obj)
}

