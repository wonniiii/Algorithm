def solution(answers):
    answer = []
    arr1 = [1,2,3,4,5] * 2000
    arr2 = [2,1,2,3,2,4,2,5] * 1250
    arr3 = [3,3,1,1,2,2,4,4,5,5] * 1000
    
    count = [0,0,0]
    
    for i in range(len(answers)):
        if arr1[i] == answers[i]:
            count[0] += 1
        if arr2[i] == answers[i]:
            count[1] += 1
        if arr3[i] == answers[i]:
            count[2] += 1
    
    for i, j in enumerate(count):
        if j == max(count):
            answer.append(i+1)
    
    return answer