//
//   .swift
//  Algorithm
//
//  Created by 최효원 on 1/4/24.
//

import Foundation

class 짝수는싫어요 {
  func solution(_ n:Int) -> [Int] {
//      var res: [Int] = []
//      for i in 0..<n {
//          if i%2 != 0 {
//            res.append(i)
//          }
//      }
//      return res
    
    (0...n).filter { $0 % 2 == 1 }

  }
}
