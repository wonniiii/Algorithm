from collections import deque

def solution(land):
    answer = 0
    n,m = len(land), len(land[0])
    directions = [(1,0), (0,1), (-1,0), (0,-1)]

    oil_sum = [0] * m
    visited = [[False] * m for _ in range(n) ]

    for i in range(n):
        for j in range(m):
            if land[i][j] == 1 and not visited[i][j]:
                q = deque([(i,j)])
                visited[i][j] = True

                size = 0
                cols = set()

                while q:
                    x, y = q.popleft()
                    size += 1
                    cols.add(y)

                    for dx, dy in directions:
                        nx, ny = x+dx, y+dy

                        if 0<= nx < n and 0<=ny<m:
                            if land[nx][ny] == 1 and not visited[nx][ny]:
                                visited[nx][ny] = True
                                q.append((nx,ny))

                for c in cols:
                    oil_sum[c] += size
                        
                
    return max(oil_sum)