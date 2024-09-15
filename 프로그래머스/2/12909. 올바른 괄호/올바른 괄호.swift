import Foundation

func solution(_ s:String) -> Bool
{
    var count: Int = 0
    
    for i in s {
        if count < 0 {
            return false
        }
        if i == "(" {
            count += 1
        } else {
            count -= 1
        }
    }
    return count == 0 ? true : false

}