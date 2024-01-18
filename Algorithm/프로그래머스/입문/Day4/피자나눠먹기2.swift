//
//  피자나눠먹기2.swift
//  Algorithm
//
//  Created by 최효원 on 1/14/24.
//

import Foundation

class 피자나눠먹기2 {
  func solution(_ n:Int) -> Int {
    //최대공약수 구하기
    var a = n
    var b = 6
    
    if a < b {
      a = b
      b = n
    }
    var c: Int
    
    while(b != 0) {
      c = a % b
      a = b
      b = c
    }
    
    return n/a
  }
}
