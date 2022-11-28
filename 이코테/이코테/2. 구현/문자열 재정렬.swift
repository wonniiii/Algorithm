//
//  main.swift
//  이코테
//
//  Created by 최효원 on 2022/10/16.
//

import Foundation

var S = readLine()!
var num = 0
var value:[String] = []
//var numArr = S.filter("0123456789".contains(_:))

for i in S {
    if i.isNumber { //숫자면
        num+=Int(String(i))!
    }else { //문자면
        value.append(String(i))
    }
}
value.sort()
if num>0 {
    value.append(String(num))
}


//string array to string
print(value.joined(separator: ""))

