import Foundation

func solution(_ numbers:String) -> Int {
    let numbers = Array(numbers).map{String($0)}
    var numberSet = Set<Int>()
    var checked = Array(repeating: false, count: numbers.count)
    
    func DFS(_ numberArray: [String]) {
        if numberArray.count == numbers.count {
            return
        }
        
        for i in 0..<numbers.count {
            if !checked[i] {
                checked[i] = true
                DFS(numberArray + [numbers[i]])
                let number = Int((numberArray + [numbers[i]]).joined())!
                numberSet.insert(number)
                checked[i] = false
            }
        }
    }
    DFS([])
    let answer = Array(numberSet).filter{isPrime($0)}.count
    return answer
}

func isPrime(_ number: Int) -> Bool {
    if number < 2 {
        return false
    }
    
    let valid = Int(sqrt(Double(number))) + 1
    
    for i in 2..<valid {
        if number % i == 0 {
            return false
        }
    }
    return true
}