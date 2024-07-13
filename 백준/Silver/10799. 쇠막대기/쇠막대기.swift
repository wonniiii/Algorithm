    let input = readLine()!.map {String($0)}
    var count = 0
    var result = 0
    for i in 0..<input.count {
      if input[i] == "(" {
        count+=1
      } else {
        count-=1
        if input[i-1] == "(" {
          result += count
        }else {
          result+=1
        }
      }
    }
  print(result)