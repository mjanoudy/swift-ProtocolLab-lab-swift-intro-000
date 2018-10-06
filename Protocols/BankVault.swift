//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

protocol ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool
}

extension BankVault: ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        if password.isEmpty {
            return false
        } else if password.count > 10 {
            return false
        } else {
            var access = true
            while access == true {
                for i in stride(from: 0, to: password.count, by: 2) {
                    if password[i] % 2 == 0 {
                        access = true
                    } else {
                        access = false
                    }
                }
            }
            return access
        }
    }
}

//{
   // var numCount = 0
   // var trueCount = 0
   // for i in stride(from: 0, to: password.count-1, by: 2) {
    //    numCount += 1
     //   let character = password[i]
    //    switch character {
    //    case 2, 4, 6, 8:
      //      trueCount += 1
       //     print("the \(i)th character is \(character)")
       // default:
      //      trueCount += 0
     //   }
 //   }
    //if numCount == trueCount {
   //     return true
  //  } else {
  //      return false
  //  }
//}
