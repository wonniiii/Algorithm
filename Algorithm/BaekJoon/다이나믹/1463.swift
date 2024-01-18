//
//  1463.swift
//  Algorithm
//
//  Created by 최효원 on 2023/05/22.
//

import Foundation

class B1463 {
  func solution() {
    
    let N = Int(readLine()!)!
    var db = Array(repeating: 0, count: N+1)
    
    for i in 2..<N+1 {
      db[i] = db[i-1] + 1
      
      if i % 2 == 0 {
        db[i] = min(db[i], db[i/2] + 1)
      }
      if i % 3 == 0 {
        db[i] = min(db[i], db[i/3] + 1)
      }
    }
    print(db[N])
  }
  

}

