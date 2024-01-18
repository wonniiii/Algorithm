//
//  직각삼각형 출력하기.swift
//  Algorithm
//
//  Created by 최효원 on 1/18/24.
//

import Foundation

class 직각삼각형출력하기 {
  func solution() {
    let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//    for i in 1..<n[0]+1 {
//      for _ in 0..<i {
//        print("*", terminator: "")
//      }
//      print("")
//    }
    
    (1...n[0]).forEach {
      print((1...$0).map { _ in "*" }.joined())
    }
  }
}
