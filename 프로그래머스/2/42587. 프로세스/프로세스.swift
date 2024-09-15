import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue = priorities.enumerated().map { ($0.offset, $0.element)}
    var result = 0
    
    while true {
        let current = queue.removeFirst()
        
        if queue.contains(where : {$0.1 > current.1}) {
            queue.append(current)
        } else {
            result += 1
            
            if current.0 == location {
                return result
            }
        }
    }
    return 0
}