//
//  main.swift
//  이코테
//
//  Created by 최효원 on 2022/10/06.
// 곱하기 혹은 더하기

import Foundation

let S = readLine()!
//let arr = Array(arrayLiteral: S).map{ Int($0)! }  0567 같은경우 int로 해서 567만 배열로
let arr = Array(S)

var result = Int(String(arr[0]))

for i in 1...arr.count-1 {
    //맨 앞이 0,1 이거나 두번째 숫자부터 0,1 나올때 더해줌
    if arr[i] == "0" || arr[i] == "1" || result == 0 || result == 1  {
        result!+=Int(String(arr[i]))!
    } else {
        result!*=Int(String(arr[i]))!
    }
}

print(result)
