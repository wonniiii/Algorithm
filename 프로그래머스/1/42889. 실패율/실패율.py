
def solution(N, stages):
    answer = []
    result = []
    people = len(stages)
    check = [0]*(N+2)
    clear = 0
    
    for i in stages:
        check[i] += 1
    
    for i in range(1,N+1):
        clear += check[i-1]
        remain = people - clear
        if remain > 0:
            answer.append([i,check[i]/remain])
        else:
            answer.append([i,0.0])
    
    answer.sort(key=lambda x: -x[1])
    for i in answer:
        result.append(i[0])
    
    return result