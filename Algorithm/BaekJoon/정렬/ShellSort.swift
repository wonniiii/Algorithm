//
//  ShellSort.swift
//  Algorithm
//
//  Created by 최효원 on 2023/07/11.
//

import Foundation


final class ShellSort {
  func solution() {
    var inputArr  = [170, 45, 7345, 90, 8024, 24, 2242, 66]
    
    //1. gap 구하기
    let n = inputArr.count
    var gap = n / 2
    
    while gap > 0 {
      //2. gap에서 배열의 끝까지 반복하면서 요소를 삽입정렬
      for i in gap..<n {
        let temp = inputArr[i]
        var j = i
        
        while j >= gap && inputArr[j - gap] > temp {
          inputArr[j] = inputArr[j - gap]
          j -= gap
        }
        
        inputArr[j] = temp
      }
      
      //3. 간격 계속 반으로 줄임
      gap /= 2
    }
    
    print(inputArr)
  }
}
