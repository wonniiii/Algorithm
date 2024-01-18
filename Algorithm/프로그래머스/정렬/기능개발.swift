//
//  기능개발.swift
//  Algorithm
//
//  Created by 최효원 on 2023/07/18.
//

import Foundation

class 기능개발 {
  func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var result: [Int] = []
    var progressesArr = progresses
    var speedsArr = speeds
    var count = 0
    repeat {
      count = 0
      for i in 0..<progressesArr.count {
        progressesArr[i] += speedsArr[i]
      }
      
      repeat {
        if progressesArr[0] >= 100 {
          progressesArr.removeFirst()
          speedsArr.removeFirst()
          count += 1
        } else {
          break
        }
      } while !progressesArr.isEmpty
      
      if count > 0 {
        result.append(count)
      }
    }while !progressesArr.isEmpty
    
    return result
  }
}
