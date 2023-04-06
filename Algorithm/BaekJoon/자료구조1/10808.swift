//
//  10808.swift
//  Algorithm
//
//  Created by 최효원 on 2023/04/06.
//

import Foundation


class B10808 {
  func solution() {
    let word = readLine()!
    var arr = Array(repeating: 0, count: 26)
    
    for i in word {
      let index = i.asciiValue! - 97
      arr[Int(index)] += 1
    }
    
    for i in arr {
      print(i, terminator: " ")
    }
  }
}
