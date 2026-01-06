from collections import deque

def solution(maps):
    grid = [list(row) for row in maps]
    n, m = len(grid), len(grid[0])
    directions = [(-1,0), (1,0), (0,-1), (0,1)]

    def find(ch):
        for i in range(n):
            for j in range(m):
                if grid[i][j] == ch:
                    return i, j
        return None

    def bfs(start, goal_char):
        sx, sy = start
        dist = [[-1]*m for _ in range(n)]
        q = deque([(sx, sy)])
        dist[sx][sy] = 0

        while q:
            x, y = q.popleft()

            if grid[x][y] == goal_char:
                return dist[x][y]

            for dx, dy in directions:
                nx, ny = x + dx, y + dy
                if 0 <= nx < n and 0 <= ny < m:
                    if grid[nx][ny] != 'X' and dist[nx][ny] == -1:
                        dist[nx][ny] = dist[x][y] + 1
                        q.append((nx, ny))

        return -1  # 도달 불가

    start = find('S')
    lever = find('L')
    exit_ = find('E')

    
    if start is None or lever is None or exit_ is None:
        return -1

    d1 = bfs(start, 'L')  # S -> L
    if d1 == -1:
        return -1

    d2 = bfs(lever, 'E')  # L -> E
    if d2 == -1:
        return -1

    return d1 + d2
