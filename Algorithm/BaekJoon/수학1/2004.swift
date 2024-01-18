//
//  2004.swift
//  Algorithm
//
//  Created by 최효원 on 2023/04/28.
//

import Foundation

class B2004 {
  func solution() {
    let input = readLine()?.split(separator: " ").map{ Int($0)! }
    var n = input![0]
    var m = input![1]
    var count = 0
    
    
    // 2의 개수 구하는 함수
    func countTwo(_ n: Int) -> Int {
      var count = 0
      var n = n
      while n > 0 {
        count += n / 2
        n /= 2
      }
      return count
    }
    
    // 5의 개수 구하는 함수
    func countFive(_ n: Int) -> Int {
      var count = 0
      var n = n
      while n > 0 {
        count += n / 5
        n /= 5
      }
      return count
    }
    
    let countTwoN = countTwo(n) - countTwo(m) - countTwo(n-m)
    let countFiveN = countFive(n) - countFive(m) - countFive(n-m)
    
    print(min(countTwoN, countFiveN))
  }
}
