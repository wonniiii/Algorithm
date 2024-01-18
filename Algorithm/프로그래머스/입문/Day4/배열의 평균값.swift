//
//  배열의 평균값.swift
//  Algorithm
//
//  Created by 최효원 on 1/18/24.
//

import Foundation

class 배열의평균값 {
  func solution(_ numbers:[Int]) -> Double {
      // var add = 0
      // for i in numbers {
      //     add += i
      // }
      // let res = Double(add)/Double(numbers.count)
      // return res
      
      return Double(numbers.reduce(0,+)) / Double(numbers.count)
  }

}
