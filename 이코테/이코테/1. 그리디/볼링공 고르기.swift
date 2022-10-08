//
//  main.swift
//  이코테
//
//  Created by 최효원 on 2022/10/09.
//  볼링공 고르기

import Foundation

let arr = readLine()!.split(separator: " ").map{ Int($0)! }
let arr2 = readLine()!.split(separator: " ").map{ Int($0)! }

let N = arr[0]
let M = arr[1]
var combination = N*(N-1)/2   //조합 결과 계산
var check = [Int](repeating: 0, count: N)   //같은 쌍 체크하기 위해 만든 배열(모두 0으로 초기화)
var count = 0  //같은 쌍 개수


for i in 0...arr2.count-1 {
   var flag = arr2[i]
    check[flag] += 1
}

for i in 0...check.count-1 {
    if check[i] > 1 {
        count+=1
    }
}

print(combination-count)

