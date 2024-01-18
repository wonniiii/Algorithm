//
//  가장 큰 수.swift
//  Algorithm
//
//  Created by 최효원 on 2023/07/05.
//

import Foundation

func solution(_ numbers:[Int]) -> String {
    var stringArr = numbers.map{String($0)}
    stringArr.sort{ $0+$1 > $1+$0 }
    
    let res = stringArr.joined()
    if let num = Int(res) { return String(num) }
    return res
}
