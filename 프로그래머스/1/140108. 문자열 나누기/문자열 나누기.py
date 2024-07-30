def solution(s):
    answer = 0
    arr = list(s)
    
    while arr:
        x = 0
        notX = 0
        first = arr[0]
        
        for i in range(len(arr)):
            if arr[i] == first:
                x += 1
            else:
                notX += 1
            
            if x == notX:
                answer += 1
                arr = arr[i+1:]
                break
        else:
            answer += 1
            break
    
    return answer