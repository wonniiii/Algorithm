//
//  main.swift
//  이코테
//
//  Created by 최효원 on 2022/11/23.
//.  고정점 찾기

import Foundation

let N = Int(readLine()!)
var arr = readLine()?.split(separator: " ").map{ Int($0)! }
var arr_start = 0
var arr_end = N!-1


func binary_search(arr: Array<Int>,start: inout Int, end: inout Int) -> Int {
    while start <= end {
       var mid = (start+end)/2
        
        if arr[mid] == mid {return mid}
        else if arr[mid] > mid { end = mid-1 }
        else {start = mid+1 }
       
    }
    return -1
}

print(binary_search(arr: arr!, start: &arr_start, end: &arr_end))
