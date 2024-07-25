def solution(N, stages):
    answer = []
    res = []

    for i in range(1,N+1):
        a,b = 0,0
        for j in stages:
            if i == j : a += 1
            if i <= j : b += 1
        if a == 0 or b == 0: 
                res.append((i,0))
        else:
            res.append((i,a/b))
            
    res.sort(key=lambda x: -x[1])
    
    answer = list(zip(*res))[0]
        
    return answer