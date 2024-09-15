import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var arr:[Int] = []
    for index in 0..<progresses.count {
        let remainingWork = 100 - progresses[index]
        let daysRequired = Double(remainingWork) / Double(speeds[index])
        let daysToComplete = Int(ceil(daysRequired))
        arr.append(daysToComplete)    
    }
    
    var flag = arr.removeFirst()
    var res: [Int] = [1]
    
    
    for i in arr {
        if flag >= i {
            res[res.count - 1] += 1
        } else {
            res.append(1)
            flag = i
        }
    }
    
    
    
    return res
}