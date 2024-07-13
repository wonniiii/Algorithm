let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0], m = input[1]

// 팩토리얼 함수
func factorial(_ n: Int) -> Int {
    var result = 1
    for i in 2...n {
        result *= i
    }
    return result
}

// nCr 계산 함수
func combination(_ n: Int, _ r: Int) -> Int {
    return factorial(n) / (factorial(r) * factorial(n-r))
}

// 2의 개수 구하는 함수
func countTwo(_ n: Int) -> Int {
    var count = 0
    var n = n
    while n > 0 {
        count += n / 2
        n /= 2
    }
    return count
}

// 5의 개수 구하는 함수
func countFive(_ n: Int) -> Int {
    var count = 0
    var n = n
    while n > 0 {
        count += n / 5
        n /= 5
    }
    return count
}

let countTwoN = countTwo(n) - countTwo(m) - countTwo(n-m)
let countFiveN = countFive(n) - countFive(m) - countFive(n-m)

print(min(countTwoN, countFiveN))
