//
//  17298.swift
//  Algorithm
//
//  Created by 최효원 on 2023/04/03.
//

import Foundation

class B17298 {
  func solution() {
    var count = Int(readLine()!)!
    var nums = readLine()!.split(separator: " ").map({Int(String($0))!})
    var stack = [[0, nums[0]]]
    var answer = Array(repeating: "-1", count: count)

    for i in 1..<nums.count {
        while !stack.isEmpty && nums[i] > stack.last![1] {
            answer[stack.removeLast()[0]] = "\(nums[i])"
        }
        stack.append([i, nums[i]])
    }

    print(answer.joined(separator: " "))
    
  }
}


//class B17298 {
//  func solution() {
//    let num = Int(readLine()!)!
//    let arr = readLine()!.split(separator: " ").map{ Int($0) }
//    var nextArr : [Int] = []
//    var result = ""
//
//    for i in 0..<num {
//      for j in i+1..<num {
//        if let value = arr[j], arr[i]! < value {
//          nextArr.append(value)
//        }
//      }
//      if nextArr.count == 0 {
//        result += "-1 "
//      }else {
//        result += String(nextArr[0])
//        result += " "
//        nextArr.removeAll()
//      }
//    }
//    print(result)
//  }
//}
