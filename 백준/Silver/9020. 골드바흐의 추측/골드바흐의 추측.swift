import Foundation

let T = Int(readLine()!)!

var inputHalf = 0
var other = 0
var resultArr : [String] = Array(repeating: " ", count: T)

for i in 0...T-1 {
    var input = Int(readLine()!)!
    inputHalf = input/2
    
    for j in stride(from: inputHalf, to: 1, by: -1) {
        if check(number: j) { //j가 소수이면
            inputHalf = j
            other = input - inputHalf
            if check(number: other) {
                break
            }
            
        }else {
            continue
        }
    }
   
    
    resultArr[i] = String(inputHalf)+" "+String(other)
}

for i in 0...resultArr.count-1 {
    print(resultArr[i])
}

func check (number:Int) -> Bool {
    var count = 0
    for i in 1...number {
        if number % i == 0 {
            count+=1
        }
    }
    if count>2 {
        return false
        
    }else {
        return true
    }

}