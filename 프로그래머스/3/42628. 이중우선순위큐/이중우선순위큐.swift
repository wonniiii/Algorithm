import Foundation

func solution(_ operations:[String]) -> [Int] {
    var queue:[Int] = []
    var res:[Int] = []
    for i in operations {
        switch i.prefix(1) {
        case "I":
            let num = Int(i.dropFirst(2))!
            queue.append(num)
        case "D":
            let flag = Int(i.dropFirst(2))!
            if !queue.isEmpty {
                queue = queue.sorted()
                if flag == -1 {
                    queue.removeFirst()
                } else {
                    queue.removeLast()
                }
            }
        default:
            break
        }
    }
    if queue.isEmpty {
        res.append(0)
        res.append(0)
    } else {
        queue = queue.sorted()
        res.append(queue.last!)
        res.append(queue.first!)
    }
    return res
}