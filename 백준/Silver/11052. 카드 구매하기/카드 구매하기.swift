import Foundation


    let N = Int(readLine()!)!
    let input = readLine()?.split(separator: " ").map{Int($0)!}
    var dpArr = [Int](repeating: 0, count: N+1)
    
    for i in 1..<N+1 {
      for j in 1..<i+1 {
        dpArr[i] = max(dpArr[i],dpArr[i-j]+input![j-1] )
      }
    }
    print(dpArr[N])
