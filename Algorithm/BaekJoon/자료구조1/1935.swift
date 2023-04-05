//
//  1935.swift
//  Algorithm
//
//  Created by 최효원 on 2023/04/05.
//

import Foundation


class B1935 {
  func solution() {

    let count = Int(readLine()!)!
      let input = readLine()!
      var num: [Double] = []
      var stack: [Double] = []
      var value = 0.00
      
        for _ in 0..<count {
          num.append(Double(readLine()!)!)
        }
        
        for i in input {
          switch i {
          case "*":
            stack.append(stack.removeLast() * stack.removeLast())
          case "+":
            stack.append(stack.removeLast() + stack.removeLast())
          case "-":
            let first = stack.removeLast()
            let second = stack.removeLast()
            stack.append(second - first)
          case "/":
            let first = stack.removeLast()
            let second = stack.removeLast()
            stack.append(second/first)
          default:
            let index = i.asciiValue! - 65
            stack.append(num[Int(index)])
          }
        }
        print(String(format: "%.2f", stack[0]))
  }
}
