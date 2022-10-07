//
//  main.swift
//  이코테
//
//  Created by 최효원 on 2022/10/07.
// 1이 될 때까지

import Foundation

var arr = readLine()!.split(separator: " ").map{ Int($0)! }
var count = 0
while arr[0] != 1 {
    if arr[0]%arr[1] == 0 {
        arr[0] = arr[0]/arr[1]
    }else {
        arr[0] -= 1
    }
    count+=1
}

print(count)
