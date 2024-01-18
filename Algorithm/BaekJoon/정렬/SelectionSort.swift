//
//  10989.swift
//  Algorithm
//
//  Created by 최효원 on 2023/06/29.
//

import Foundation

final class B10989_Selection {
  func solution() {
    
    let N = Int(readLine()!)!
    var inputArr : [Int] = []
    for _ in 0..<N {
      inputArr.append(Int(readLine()!)!)
    }
    
    // Selection Sort
    for i in 0..<inputArr.count {
      var minIndex = i
      for j in i+1..<inputArr.count {
        if inputArr[j] < inputArr[minIndex] {
          minIndex = j
        }
      }
      if minIndex != i {
        inputArr.swapAt(i, minIndex)
      }
    }
  }
}
