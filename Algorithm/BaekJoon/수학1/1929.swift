//
//  1929.swift
//  Algorithm
//
//  Created by 최효원 on 2023/04/25.
//

import Foundation

class B1929 {
  func solution() {
    let input = readLine()?.split(separator: " ").map{Int(String($0))!}
    let start = input![0]
    let end = input![1]
    var arr = Array(repeating: 0, count: end+1)
    
    for i in 2...end {
      arr[i] = i
    }
    for i in 2...end {
      if arr[i] == 0 {continue}
      for j in stride(from: i + i, through: end, by: i) {
        arr[j] = 0
      }
    }
    for i in start...end {
      if arr[i] != 0 {
        print("\(arr[i])")
      }
    }
  }
}
