//
//  main.swift
//  BaekJoon
//
//  Created by 최효원 on 2023/02/11.
//  9093번

import Foundation

let T = Int(readLine()!)!

for _ in 0...T-1 {
  var text = readLine()!.components(separatedBy: " ").map{ String($0) }
  for i in 0...text.count-1 {
    let text2 = text[i].map{ String($0) }
    
    text[i] = text2.reversed().joined(separator: "")
    
  }
  print(text.joined(separator: " "))
}
