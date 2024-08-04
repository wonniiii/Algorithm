def solution(n, lost, reserve):
    reserve_only = list(set(reserve) - set(lost))
    lost_only = list(set(lost) - set(reserve))

    for i in reserve_only:
        if i - 1 in lost_only:
            lost_only.remove(i - 1)
        elif i + 1 in lost_only:
            lost_only.remove(i + 1)
    
    answer = n - len(lost_only)
    return answer