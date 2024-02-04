//
//  2164.swift
//  Algorithm
//
//  Created by 최효원 on 2/2/24.
//

import Foundation

//https://www.acmicpc.net/problem/2164

struct Queue {
  private var queue: [Int] = []
  private var index = 0
  
  public var count:Int {
    queue.count - index
  }
  
  public mutating func enqueue(_ n:Int) {
    queue.append(n)
  }
  
  public mutating func dequeue() -> Int {
    defer {
      index += 1
    }
    return queue[index]
  }
}
class B2164 {
  func solution() {
    let N = Int(readLine()!)!
    var queue = Queue()
    
    for i in 1...N{
      queue.enqueue(i)
    }
    
    while queue.count != 1 {
      _ = queue.dequeue()
      queue.enqueue(queue.dequeue())
      
    }
    print(queue.dequeue())
  }
}
