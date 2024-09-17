import Foundation

func solution(_ brown: Int, _ yellow: Int) -> [Int] {
    let total = brown + yellow 
    
    for height in 1...total {
        if total % height == 0 {
            let width = total / height
            
            if width >= height {
                let brownCheck = (width * 2) + (height * 2) - 4
                if brownCheck == brown {
                    return [width, height]
                }
            }
        }
    }
    
    return []
}
