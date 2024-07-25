def solution(numbers):
    answer = []
    n = len(numbers)
    for i in range(0, n):
        for j in range(i+1, n):
            answer.append(numbers[i] + numbers[j])
    res = list(set(answer))
    res.sort()
    return res