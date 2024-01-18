//
//  InsertionSort.swift
//  Algorithm
//
//  Created by 최효원 on 2023/07/09.
//

import Foundation

final class InsertionSort {
  func solution() {
    let N = Int(readLine()!)!
    var inputArr : [Int] = []
    for _ in 0..<N {
      inputArr.append(Int(readLine()!)!)
    }
    
    var count = 0
    for i in 1...inputArr.count-1 {
      for j in stride(from: i-1, to: -1, by: -1){
        if inputArr[i] < inputArr[j] {
          count += 1
        }
      }
      var num = inputArr[i]
      inputArr.remove(at: i)
      inputArr.insert(num, at: i-count)
      count = 0
    }
    print(inputArr)
  }
}
