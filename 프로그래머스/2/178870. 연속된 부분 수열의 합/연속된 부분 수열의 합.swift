import Foundation

func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    
    var start: Int = 0
    var end: Int = 0
    var sum: Int = sequence[0]
    var length: Int = Int.max
    var res: [Int] = []
    
    while end <= sequence.count {
        
        if sum == k {
            let currentLength = end-start+1
            if currentLength < length {
                length = currentLength
                res = [start, end]
            } else if currentLength == length && start < res[0] {
                res = [start, end]
            }
        }
        
        if sum <= k {
            end += 1
            if end < sequence.count {
                sum += sequence[end]
            }
        } else {
            sum -= sequence[start]
            start += 1
        }
        
    }
    return res
}