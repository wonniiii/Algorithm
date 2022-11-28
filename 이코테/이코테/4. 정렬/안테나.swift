//
//  main.swift
//  이코테
//
//  Created by 최효원 on 2022/11/16.
//  안테나

import Foundation

let N = Int(readLine()!)
var arr = readLine()!.split(separator: " ").map{ Int($0)! }
var result = 0

arr.sort()

print(arr[(N!-1)/2])
