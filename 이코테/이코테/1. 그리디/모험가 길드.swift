//
//  main.swift
//  이코테
//
//  Created by 최효원 on 2022/10/05.
// 모험가 길드

import Foundation

let N = Int(readLine()!)
var arr = readLine()!.split(separator: " ").map{ Int($0)! }

arr.sort()

var group = 0  //그룹 수
var adven = 0   //모험가 수

for i in arr {
    adven += 1
    if adven >= i {
        group+=1
        adven = 0
    }
}

print(group)
