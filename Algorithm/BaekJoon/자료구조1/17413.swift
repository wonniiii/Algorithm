//
//  main.swift
//  BaekJoon
//
//  Created by 최효원 on 2023/03/09.
//. 17413

import Foundation

//공백 파악
//태그 파악 - 태그면 그냥 pop
//스택에 push
//pop
class B17413 {
  func solution () {
    var result: String = ""
    let input = readLine()!
    var str: String = ""
    var check: Bool = true
    
    for word in input {
      switch word {
      case "<":
        result += str.reversed()
        result.append(word)
        str = ""
        check = false
      case ">":
        result.append(word)
        check = true
        
      default:
        if check {
          if word == " " {
            result += str.reversed() + " "
            str = ""
          }else {
            //역순
            str.append(word)
          }
        }else {
          result.append(word)
        }
      }
    }
    if !str.isEmpty {
      result += str.reversed()
    }
    print(result)
    
  }
}
