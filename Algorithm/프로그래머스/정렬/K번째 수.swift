//
//  K번째 수.swift
//  Algorithm
//
//  Created by 최효원 on 2023/07/05.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var res : [Int] = []
    for i in 0..<commands.count {
        var temp : [Int] = []
        for j in commands[i][0]-1..<commands[i][1] {
            temp.append(array[j])
        }
        temp.sort()
        res.append(temp[commands[i][2]-1])
    }
    return res
}
