//
//  분수의 덧샘.swift
//  Algorithm
//
//  Created by 최효원 on 1/2/24.
//

import Foundation

class 분수의덧셈 {
  func gcd(a: Int, b: Int) -> Int {
    var aa = a
    var bb = b
    
    if aa < bb {
      aa = b
      bb = a
    }
    var c: Int
    
    while (bb != 0) {
      c = aa % bb
      aa = bb
      bb = c
    }
    
    return aa
  }
  
  func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    var denom: Int
    var numer11 = numer1
    var numer22 = numer2
    
    if denom1 % denom2 == 0 {
      denom = denom1
      numer22 *= (denom1 / denom2)
    } else if denom2 % denom1 == 0 {
      denom = denom2
      numer11 *= (denom2 / denom1)
    } else {
      denom = denom1 * denom2
      numer11 *= denom2
      numer22 *= denom1
    }
    
    var numer = numer11 + numer22
    let dis = gcd(a: numer,b: denom)
    
    return [numer/dis,denom/dis]
  }
}
