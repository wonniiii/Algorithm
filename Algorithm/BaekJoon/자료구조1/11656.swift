//
//  11656.swift
//  Algorithm
//
//  Created by 최효원 on 2023/04/11.
//

import Foundation

class B11656 {
  func solution() {
    let input = readLine()!.map{String($0)}.reversed()
    var arr: [String] = []
    
    for i in 1...input.count {
      var subSequence = input.prefix(i).reversed().joined(separator: "")
      arr.append(subSequence)
    }
    
    arr.sort()
    for i in 0..<arr.count {
      print(arr[i],terminator: "\n")
    }
  }
}
