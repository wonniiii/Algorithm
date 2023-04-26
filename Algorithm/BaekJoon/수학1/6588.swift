//
//  6588.swift
//  Algorithm
//
//  Created by 최효원 on 2023/04/25.
//

import Foundation


class B6588 {
  func solution() {
    var primes = Array(repeating: true, count: 1000001)

    for i in 0..<1000001{
        if i <= 1{
            primes[i] = false
            continue
        }
        if primes[i]{
            for k in stride(from: i+i, to: 1000001, by: +i){
                primes[k] = false
            }
        }
    }

    while let input = readLine(){
        let n = Int(input)!
        if n == 0{ break }
        
        var flag = false
        for i in 3..<1000001{
            if primes[i]{
                let chk = n-i
                if primes[chk]{
                    flag = true
                    print(n,"=",i,"+",chk)
                    break
                }
            }
        }
        if !flag{
            print("Goldbach's conjecture is wrong.")
        }
    }
  }
}

//class B6588 {
//  var prime : [Int] = []
//  var result : [Int] = []
//  func solution() {
//    while let input = Int(readLine()!) {
//      if input == 0 { break }
//      goldBach(input: input)
//      for i in 0..<prime.count {
//        if prime.contains(input - prime[i]) {
//          result.append(prime[i])
//          result.append(input-prime[i])
//        }
//      }
//      if result.count == 0 {
//        print("Goldbach's conjecture is wrong.")
//      }else {
//        print("\(input) = \(result[0]) + \(result[1])")
//        result.removeAll()
//      }
//    }
//    }
//
//    func goldBach(input: Int) {
//      var arr = Array(repeating: 0, count: input+1)
//          //input보다 작은 소수 만들기 - 에라토스테네스의 채
//          for i in 2...input {
//            arr[i] = i
//          }
//          for i in 2...input {
//            if arr[i] == 0 {continue}
//            //i의 배수들을 싹다 0으로 지움
//            for j in stride(from: i + i, through: input, by: i) {
//              arr[j] = 0
//            }
//          }
//          for i in 2...input {
//            if arr[i] != 0 && arr[i] != 2 {
//              prime.append(arr[i])
//            }
//          }
//        }
//
//  }

