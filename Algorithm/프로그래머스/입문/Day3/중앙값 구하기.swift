//
//  중앙값 구하기.swift
//  Algorithm
//
//  Created by 최효원 on 1/2/24.
//

import Foundation

class 중앙값구하기 {
  func solution(_ array:[Int]) -> Int {
    return array.sorted()[array.count/2]
  }
}
