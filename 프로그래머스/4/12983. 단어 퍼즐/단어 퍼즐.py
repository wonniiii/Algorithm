def solution(strs, t): 
    INF = 10**9 
    n = len(t)

    sset = [set() for _ in range(6)]
    for words in strs:
        sset[len(words)].add(words)

    dp = [INF] * (n+1)
    dp[0] = 0

    for i in range(1, n+1):
        for L in range(1,6):
            if i < L:
                break
            if dp[i-L] == INF:
                continue
            if t[i-L:i] in sset[L]:
                dp[i] = min(dp[i], dp[i-L] + 1)


    return -1 if dp[n]==INF else dp[n]