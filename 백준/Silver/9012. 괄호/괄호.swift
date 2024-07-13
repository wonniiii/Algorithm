import Foundation

let number = Int(readLine()!)!


for _ in 0...number-1 {
  var vps = readLine()?.map{ String($0) }
  var count = 0
  var value = ""
  for i in 0...vps!.count-1 {
    vps![i] == "(" ? (count+=1) : (count-=1)
    if count<0 {
      value = "NO"
      break
    }
  }
  if count == 0 {value = "YES"} else {value = "NO"}
  print(value)
}