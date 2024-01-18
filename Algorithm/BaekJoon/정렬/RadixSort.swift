//
//  RadixSort.swift
//  Algorithm
//
//  Created by 최효원 on 2023/07/09.
//

import Foundation

final class RadixSort {
  func solution() {
   var inputArr  = [170, 45, 7345, 90, 8024, 24, 2242, 66]

    
    //1. 배열의 최댓값 자릿수 파악
    let max = inputArr.max() ?? 0
    let maxCount = String(max).count
    var count = 1
    var square = 1
    
    
    while count <= maxCount {
               //2. 큐 생성
               var queue: [[Int]] = Array(repeating: [], count: 10)
               
               //3. 해당 자릿수에 따라 큐에 숫자 분배
               for i in inputArr {
                   let digit = (i / square) % 10
                   queue[digit].append(i)
               }
               
               //4. 큐에 있는 숫자들을 순서대로 배열에 넣기
               var index = 0
               for i in queue {
                   for j in i {
                       inputArr[index] = j
                       index += 1
                   }
               }
               
               count += 1
               square *= 10
           }
           
           print(inputArr)
       }
   }
