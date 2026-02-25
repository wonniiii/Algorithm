def solution(strs, t):
    INF = 99999
    dp = [INF] * len(t) + [0]
    for i in range(len(t)-1, -1, -1):
        for j in range(1, min(6, len(t)-i+1)):
            if t[i:i+j] in strs:
                dp[i] = min(dp[i], dp[i+j]+1)
    return -1 if dp[0]==INF else dp[0]
