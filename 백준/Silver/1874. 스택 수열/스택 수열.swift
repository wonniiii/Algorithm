import Foundation

let N = Int(readLine()!)!
var value : [String] = []
var stack : [Int] = []
var count = 1

for _ in 0...N-1 {
  let num = Int(readLine()!)!
  
  while count <= num {
    stack.append(count)
    value.append("+")
    count+=1
  }
  if stack.last == num {
    stack.popLast()
    value.append("-")
  }else {
    print("NO")
    exit(0)
  }
}

print(value.joined(separator: "\n"))