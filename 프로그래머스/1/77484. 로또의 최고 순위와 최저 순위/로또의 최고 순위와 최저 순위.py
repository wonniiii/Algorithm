def solution(lottos, win_nums):
    answer = []
    rate = [1,2,3,4,5,6,6]
    zero, fail = 0, 0
    
    for i in lottos:
        if i == 0:
            zero += 1
            continue
        if i not in win_nums:
            fail += 1
    
    answer.append(rate[fail])
    answer.append(rate[fail+zero])        
                
    return answer