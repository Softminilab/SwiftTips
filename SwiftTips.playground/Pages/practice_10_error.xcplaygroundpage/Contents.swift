//: [Previous](@previous)

import Foundation

enum LoginError: Error {
    case userNameIsNull
    case pwdIsNull
}

class UserLogin {
    func login(_ name: String, pwd: String) throws {
        guard !name.isEmpty else {
            throw LoginError.userNameIsNull
        }
        guard !pwd.isEmpty else {
            throw LoginError.pwdIsNull
        }
        // doing
    }
    
    func test() {
        do {
            try? login("name", pwd: "pwd")
        } catch LoginError.userNameIsNull {
            print("name is null")
        } catch LoginError.pwdIsNull {
            print("pwd is null")
        } catch {
            print("UNKnow")
        }
    }
}

class ThrowsAndReThrows {
    enum T: Error {
        case lenghtNotValid
    }
    
    func methodThrow(_ par: String) throws {
        if par.isEmpty {
            throw T.lenghtNotValid
        }
        // ....
    }
    
    func methodReThrows(_ name: String, f: (String) throws -> ()) rethrows {
        try f(name)
    }
    
    func test() {
        do {
            try methodReThrows("name", f: methodThrow)
        }catch {
            
        }
    }
}
