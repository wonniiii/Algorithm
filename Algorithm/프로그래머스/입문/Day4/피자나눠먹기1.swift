//
//  1.swift
//  Algorithm
//
//  Created by 최효원 on 1/18/24.
//

import Foundation

class 피자나눠먹기1 {
  func solution(_ slice:Int, _ n:Int) -> Int {
    return Int(ceil(Double(n)/Double(slice)))
  }
}
