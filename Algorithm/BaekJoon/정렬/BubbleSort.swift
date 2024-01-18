//
//  BubbleSort.swift
//  Algorithm
//
//  Created by 최효원 on 2023/07/09.
//

import Foundation

final class BubbleSort {
  func solution() {
    let N = Int(readLine()!)!
    var inputArr : [Int] = []
    for _ in 0..<N {
      inputArr.append(Int(readLine()!)!)
    }
    
    for i in 0..<inputArr.count {
      for j in 0..<inputArr.count-i-1 {
        if inputArr[j] > inputArr[j+1] {
          inputArr.swapAt(j, j+1)
          print(inputArr)
        }
      }
    }
  }
}
