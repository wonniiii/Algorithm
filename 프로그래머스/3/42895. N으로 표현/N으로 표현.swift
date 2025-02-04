import Foundation

func solution(_ N: Int, _ number: Int) -> Int {
    if N == number { return 1 }
    
    var dp = Array(repeating: Set<Int>(), count: 9) // dp[i]는 i번 사용해서 만들 수 있는 숫자 집합
    
    for i in 1...8 {
        let basicNumber = Int(String(repeating: "\(N)", count: i))! // N, NN, NNN...
        dp[i].insert(basicNumber)
        
        for j in 1..<i {
            for num1 in dp[j] {
                for num2 in dp[i - j] {
                    dp[i].insert(num1 + num2) // 덧셈
                    dp[i].insert(num1 - num2) // 뺄셈
                    dp[i].insert(num1 * num2) // 곱셈
                    if num2 != 0 { dp[i].insert(num1 / num2) } // 나눗셈 (0 나누기 방지)
                }
            }
        }
        
        if dp[i].contains(number) {
            return i
        }
    }
    
    return -1
}
