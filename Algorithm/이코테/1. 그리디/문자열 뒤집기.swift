//
//  main.swift
//  이코테
//
//  Created by 최효원 on 2022/10/04.
//

import Foundation
//백준 1439번

let S = readLine()!
let firstArr  = Array(S)
var secondArr: [Character] = []
var count0 = 0
var count1 = 0

secondArr.insert(firstArr[0], at: 0)

//연속된 중복 제거
for i in 1..<firstArr.count {
    if firstArr[i-1] != firstArr[i] {
        secondArr.append(firstArr[i])
    }
}

for i in 0...secondArr.count-1 {
    if secondArr[i] == "0" {
        count0+=1
    }else {
        count1+=1
    }
}

count0>count1 ? print(count1) : print(count0)

