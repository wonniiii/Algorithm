def solution(answers):

    one = [1,2,3,4,5]
    two = [2,1,2,3,2,4,2,5]
    three = [3,3,1,1,2,2,4,4,5,5]
    n = len(answers)

    answer = [0,0,0]

    for i in range(0,len(answers)):
        if one[i % len(one)] == answers[i]:
            answer[0] += 1
        if two[i % len(two)] == answers[i]:
            answer[1] += 1
        if three[i % len(three)] == answers[i]:
            answer[2] += 1

    max_score = max(answer)
    res = []

    for i in range(0,3):
        if max_score == answer[i]:
            res.append(i+1)
    return res
