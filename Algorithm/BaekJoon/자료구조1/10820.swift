//
//  10820.swift
//  Algorithm
//
//  Created by 최효원 on 2023/04/07.
//

import Foundation

class B10820 {
  func solution() {
    while let input = readLine() {
    var upper = 0
    var lower = 0
    var num = 0
    var gap = 0
      for i in input {
        if i.isUppercase {upper += 1}
        else if i.isLowercase {lower += 1}
        else if i.isNumber {num += 1}
        else {gap += 1}
      }
      print("\(lower) \(upper) \(num) \(gap)")
    }
  }
}
