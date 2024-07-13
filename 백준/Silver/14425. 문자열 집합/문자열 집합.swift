import Foundation 

    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    var arr: Set<String> = []
    var count = 0
    
    for _ in 0..<input[0] {
      if let inputString = readLine() {
        arr.insert(inputString)
      } else {
        print("no input")
      }
    }
    for _ in 0..<input[1] {
      if let inputString = readLine() {
         count += arr.contains(inputString) ? 1 : 0
      }
    }
    print(count)