#Bottom-up 방식
def solution(triangle):
    dp = [row[:] for row in triangle]
    n = len(triangle)
    
    for i in range(n-2,-1,-1):
        for j in range(len(triangle[i])):
            dp[i][j] += max(dp[i+1][j],dp[i+1][j+1])

    return dp[0][0]