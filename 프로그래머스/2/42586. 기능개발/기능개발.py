import math

def solution(progresses, speeds):
    answer = []
    progress = []
    k = 0
    
    for i,j in zip(progresses, speeds):
        progress.append(math.ceil((100-i)/j))
    
    complete = progress[0]
    cnt = 1
    
    for i in progress[1:]:
        if complete >= i:
            cnt += 1
        else:
            answer.append(cnt)
            cnt = 1
            complete = i
            
    answer.append(cnt)
    return answer