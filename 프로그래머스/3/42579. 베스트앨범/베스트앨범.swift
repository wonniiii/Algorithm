import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var dicts: [String: [[Int:Int]]] = [:]
    var maxCount: [String:Int] = [:]
    var res: [Int] = []

    for index in 0..<genres.count {
        if dicts[genres[index]] == nil {
            dicts[genres[index]] = [[index: plays[index]]]
            maxCount[genres[index]] = plays[index]
        } else {
            dicts[genres[index]]!.append([index: plays[index]])
            maxCount[genres[index]]! += plays[index]
        }
    }
    
    dicts = dicts.mapValues { $0.sorted { $0.values.first! > $1.values.first! } }

    while !dicts.isEmpty {
        guard let maxGenre = maxCount.max(by: { $0.value < $1.value })?.key else {
            break
        }

        for _ in 0..<2 {
            if !dicts[maxGenre]!.isEmpty {
                let song = dicts[maxGenre]!.removeFirst()
                res.append(song.keys.first!)
            }
        }

            dicts.removeValue(forKey: maxGenre)
            maxCount.removeValue(forKey: maxGenre)
        
    }

    return res
}
