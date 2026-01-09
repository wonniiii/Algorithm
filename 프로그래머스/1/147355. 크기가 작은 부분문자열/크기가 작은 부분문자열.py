def solution(t, p):
    n = len(p)
    p_num = int(p)
    answer = 0

    for i in range(len(t)-n+1):

        if int(t[i:i+n]) <= p_num:
            answer += 1


    return answer