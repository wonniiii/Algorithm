//
//  main.swift
//  이코테
//
//  Created by 최효원 on 2022/10/13.
//

import Foundation

let arr = Array(readLine()!).map{Int(String($0))!}
var leftResult = 0
var rightResult = 0

if arr.count % 2 == 0 {
    for i in 0...arr.count-1 {
        if i <= arr.count/2-1 {
            leftResult += Int(String(arr[i]))!
        } else {
            rightResult += Int(String(arr[i]))!
        }
    }
    
}

if leftResult == rightResult {
    print("LUCKY")
}else {
    print("READY")
}


