import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var arr = s.map{String($0)}
    var count = 0
    
    for i in arr {
        i == "(" ? (count+=1) : (count-=1)
        if count < 0 {
            ans = false
            break
        } 
    }
     if count == 0 {ans = true} else {ans = false}
    return ans
}