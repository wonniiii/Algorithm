def solution(x, y, n):
    answer = 0
    s = set()
    s.add(x)
    
    while s:
        if y in s:
            return answer
        ns = set()
        
        for i in s:
            if i + n <= y:
                ns.add(i+n)
            if i*2 <= y:
                ns.add(i*2)
            if i*3 <= y:
                ns.add(i*3)
            
        s = ns
        answer += 1
            
        
    return -1
