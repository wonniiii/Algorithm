//
//  10989-Counting.swift
//  Algorithm
//
//  Created by 최효원 on 2023/07/04.
//

import Foundation

final class B10989_Counting {
  func solution() {
    let N = Int(readLine()!)!
    var inputArr : [Int] = []
    for _ in 0..<N {
      inputArr.append(Int(readLine()!)!)
    }
    
    //Counting Sort
    var max = 0
    for i in 0..<inputArr.count {
      if max < inputArr[i] {
        max = inputArr[i]
      }
    }
    
    //1. 배열 만들기
    var sumArr = Array(repeating: 0, count: max + 1)
    var countingArr = Array(repeating: 0, count: inputArr.count)
    
    //2. 갯수 세기
    for i in inputArr {
      sumArr[i] += 1
    }
    
    //3. 누적합 구하기
    for i in 1..<sumArr.count {
      sumArr[i] += sumArr[i-1]
    }
    
    //4. 누적합을 이용해서 정렬
    for i in inputArr.reversed() {
      sumArr[i] -= 1
      countingArr[sumArr[i]] = i
    }
    
    
    for i in 0..<countingArr.count {
      print(countingArr[i])
    }
  }
}

