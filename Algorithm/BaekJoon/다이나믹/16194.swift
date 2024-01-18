//
//  16194.swift
//  Algorithm
//
//  Created by 최효원 on 2023/06/11.
//

import Foundation


final class B16194 {
  func solution() {
    let N = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map{Int($0)!}
    var dpArr = Array(repeating: 999999, count: N+1)
    
    dpArr[0] = 0
    for i in 1..<N+1 {
      for j in 1..<i+1 {
        dpArr[i] = min(dpArr[i], dpArr[i-j] + arr[j-1])
      }
    }
    print(dpArr[N])
  }
}
