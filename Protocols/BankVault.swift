//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

/*
 (1) - In the BankVault.swift file, create a protocol named ProvideAccess. This protocol should require any class/struct that conforms to it to implement a function called allowEntryWithPassword which takes in one argument called password of type [Int] (an array of Ints). The function should return a Bool.
 
 (2) - In the BankVault.swift file, below where you created the ProvideAccess protocol - create an extension on the BankVault class. In that extension, it should conform to the ProvideAccess protocol. In your implementation of the allowEntryWithPassword(_:) function, you should adhere to the following rules:
 
 If the person calling on this function doesn't enter in any digits (empty array), then we should return false.
 If the total numbers of digits entered (items in the array) exceed 10, then we should return false.
 In order to allow access (return true), every other digit (starting with the first digit) must be even. The first digit entered is the first element in the array.
 */

protocol ProvideAccess {
    func allowEntryWithPassword(password: [Int]) -> Bool
}



class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

extension BankVault {
    func allowEntryWithPassword(password: [Int]) -> Bool {
        guard !password.isEmpty else {return false}
        guard password.count <= 10 else {return false}
        for i in 0...5 {
            let index = i * 2
            if password[index] % 2 != 0 {
                return false
            }
        }
        return true
    }
}
