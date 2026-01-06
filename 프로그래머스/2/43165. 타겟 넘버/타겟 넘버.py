def solution(numbers, target):
    answer = 0
    n = len(numbers)

    def dfs(i, total):
        nonlocal answer
        if i == n:
            if total == target:
                answer += 1
            return

        dfs(i+1, total + numbers[i])
        dfs(i+1, total - numbers[i])

    dfs(0,0)
    return answer