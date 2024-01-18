//
//  짝수 홀수 개수.swift
//  Algorithm
//
//  Created by 최효원 on 1/18/24.
//

import Foundation

class 짝수홀수개수 {
  func solution(_ num_list:[Int]) -> [Int] {
    let odd = num_list.filter{ $0 % 2 != 0 }.count
    return [num_list.count - odd, odd]
  }
}
