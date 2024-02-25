//
//  11279.swift
//  Algorithm
//
//  Created by 최효원 on 2/8/24.
//

import Foundation

class B11279 {
  func solution() {
    let N = Int(readLine()!)!
    var arr: [Int] = []
    
    for _ in 0..<N {
      if let num = Int(String(readLine()!)) {
        if num == 0 {
          if arr.count > 0 {
            var max = 0, maxIndex = 0
            for i in 0..<arr.count {
              if max < arr[i] {
                max = arr[i]
                maxIndex = i
              }
            }
            arr[maxIndex] = 0
            print(max)
          } else {
            print(0)
          }
        } else {
          arr.append(num)
        }
      }
    }
  }
}
