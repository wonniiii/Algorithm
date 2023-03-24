//
//  main.swift
//  BaekJoon
//
//  Created by 최효원 on 2023/02/21.
//  1406

import Foundation

var stackL = Array(readLine()!)
var stackR = [Character]()
let num = Int(readLine()!)!

for _ in 0..<num {
  let order = readLine()!
  switch order {
  case "L":
    if !stackL.isEmpty {
      stackR.append(stackL.removeLast())
    }
  case "D":
    if !stackR.isEmpty {
      stackL.append(stackR.removeLast())
    }
  case "B":
    if !stackL.isEmpty {
      stackL.removeLast()
    }
  default:
    stackL.append(order.last!)
  }
}
print(String(stackL + stackR.reversed()) )

