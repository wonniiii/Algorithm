//
//  1620.swift
//  Algorithm
//
//  Created by 최효원 on 2/4/24.
//

import Foundation

//https://www.acmicpc.net/problem/1620

class B1620 {
  func solution() {
    let input = readLine()?.split(separator: " ").map{ Int(String($0))!}
    var nameDic: [Int:String] = [:]
    var numDic: [String:Int] = [:]
    
  
    for i in 1..<input![0]+1 {
      let name = readLine()!
      numDic[name] = i
      nameDic[i] = name
    }

    for _ in 0..<input![1] {
     var str = readLine()!
      if let strInt = Int(str) {
        print(nameDic[strInt]!)
      } else {
        print(numDic[str]!)
      }
    }

  }
}
