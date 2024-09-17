import Foundation

func solution(_ citations:[Int]) -> Int {
    var sortArr: [Int] = citations.sorted(by:>)
    var res = 0
        for (index,num) in sortArr.enumerated() {
            if index+1 <= num {
                res = index + 1
            } else {
                break
            }
        }
    
    
    return res
}