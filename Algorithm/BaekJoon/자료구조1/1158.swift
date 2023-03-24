//
//  main.swift
//  BaekJoon
//
//  Created by 최효원 on 2023/03/04.
//  1158

import Foundation

let input = readLine()?.split(separator: " ").map{ Int($0) }
var array = Array(1...input![0]!)
var answer: [Int] = []
var index = input![1]!-1
var count = 0


while true {
  answer.append(array.remove(at: index ))
  if array.isEmpty {break}
  index = (index + input![1]!-1) % array.count
}

print("<"+answer.map({String($0)}).joined(separator: ", ")+">")
