//
//  main.swift
//  이코테
//
//  Created by 최효원 on 2023/02/23.
//

import Foundation

let num = Int(readLine()!)!
var array : [Int] = []

func push(arr: inout Array<Int>, input: String) {
  var number = input.split(separator: " ")
  arr.append(Int(number.popLast()!)!)
}

func pop(arr: inout Array<Int>) {
  !arr.isEmpty ? print(arr.removeFirst()) : print("-1")
}

func size(arr:Array<Int>) {
  print(arr.count)
}

func empty(arr:Array<Int>) {
  arr.isEmpty ? print("1") : print("0")
}
func front(arr:Array<Int>) {
  !arr.isEmpty ? print(arr.first!) : print("-1")
  }

func back(arr:Array<Int>) {
  !arr.isEmpty ? print(arr.last!) : print("-1")
}


  for _ in 0..<num {
    let order = readLine()!
    
    switch order {
    case "pop":
      pop(arr: &array)
      break
    case "size":
      size(arr: array)
      break
    case "empty":
      empty(arr: array)
      break
    case "front":
      front(arr: array)
      break
    case "back":
      back(arr: array)
    default:
      push(arr: &array, input: order)
    }
    
  
}

