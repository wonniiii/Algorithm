def solution(answers):
    answer = []
    arr1 = [1,2,3,4,5] * 2000
    arr2 = [2,1,2,3,2,4,2,5] * 1250
    arr3 = [3,3,1,1,2,2,4,4,5,5] * 1000
    count1, count2, count3 = 0,0,0 
    
    for i in range(len(answers)):
        if arr1[i] == answers[i]:
            count1 += 1
        if arr2[i] == answers[i]:
            count2 += 1
        if arr3[i] == answers[i]:
            count3 += 1
    
    res = [count1, count2, count3]
    
    for i in range(len(res)):
        if res[i] == max(res):
            answer.append(i+1)
    
    return answer