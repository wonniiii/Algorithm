//
//  몫구하기.swift
//  Algorithm
//
//  Created by 최효원 on 1/18/24.
//

import Foundation

class 몫구하기 {
  func solution(_ num1:Int, _ num2:Int) -> Int {
    guard 1...100 ~= num1, 1...100 ~= num2 else {return -1}
    return num1/num2
  }
}
