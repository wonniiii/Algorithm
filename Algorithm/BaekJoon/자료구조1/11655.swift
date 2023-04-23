//
//  11655.swift
//  Algorithm
//
//  Created by 최효원 on 2023/04/09.
//

import Foundation
class B11655 {
  func solution() {
    let input = readLine()!
    var result = ""
    
    for i in input {
      if i.isUppercase{
        if i.asciiValue! > 77 {
          result += String(UnicodeScalar(i.asciiValue! - 13))
        }else {
          result += String(UnicodeScalar(i.asciiValue! + 13))
        }
      }else if i.isLowercase {
        if i.asciiValue! > 109 {
          result += String(UnicodeScalar(i.asciiValue! - 13))
        }else {
          result += String(UnicodeScalar(i.asciiValue! + 13))
        }
      }else {
        result += String(i)
      }
    }
    print(result)
  }
}
