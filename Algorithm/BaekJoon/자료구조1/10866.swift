//
//  main.swift
//  BaekJoon
//
//  Created by 최효원 on 2023/03/08.
//. 10866

import Foundation

func push_front(array: inout Array<Int>, num: Int) {
  array.insert(num, at: 0)
}

func push_back(array: inout Array<Int>, num: Int) {
  array.insert(num, at: array.count)
}

func pop_front(array: inout Array<Int>) {
  if array.isEmpty {
    print("-1")
  }else {
    print(Int(array.first!))
    array.removeFirst()
  }
}

func pop_back(array: inout Array<Int>) {
  if array.isEmpty {
    print("-1")
  }else {
    print(Int(array.last!))
    array.removeLast()
  }
}

func size(array: Array<Int>) {
  print(array.count)
}

func empty(array: Array<Int>) {
  array.isEmpty ? print("1") : print("0")
}

func front(array: Array<Int>) {
  array.isEmpty ? print("-1") : print(Int(array.first!))
  //return array.first ?? -1 => nil일 경우 -1 반환
}

func back(array: Array<Int>) {
  array.isEmpty ? print("-1") : print(Int(array.last!))
}

let num = Int(readLine()!)!
var dec: [Int] = []

for _ in 0..<num {
  let order = readLine()?.split(separator: " ")
  
  switch order![0] {
  case "push_front":
    push_front(array: &dec, num: Int(order![1])!)
    break
  case "push_back":
    push_back(array: &dec, num: Int(order![1])!)
  case "pop_front":
    pop_front(array: &dec)
  case "pop_back":
    pop_back(array: &dec)
  case "size":
    size(array: dec)
  case "front":
    front(array: dec)
  case "back":
    back(array: dec)
  default:
    empty(array: dec)
  }
  
}
