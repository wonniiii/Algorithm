//
//  문자 반복 출력하기.swift
//  Algorithm
//
//  Created by 최효원 on 1/18/24.
//

import Foundation

class 문자반복출력하기 {
  func solution(_ my_string:String, _ n:Int) -> String {
    var res = ""
    for i in my_string {
      res+=String(repeating: i, count: n)
    }
    return res
  }
}
