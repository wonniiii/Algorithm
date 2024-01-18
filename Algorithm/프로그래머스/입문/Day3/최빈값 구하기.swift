//
//  최빈값 구하기.swift
//  Algorithm
//
//  Created by 최효원 on 1/4/24.
//

import Foundation

class 최빈값구하기 {
  func solution(_ array:[Int]) -> Int {
    var res = [Int: Int]()
    
    for i in array {
      res[i, default: 0] += 1
    }
    
    let max = res.values.max()!
    let key = res.filter {$0.value == max}
    if key.count > 1 {
      return -1
    } else {
      return key.first!.key
    }
  }
}

