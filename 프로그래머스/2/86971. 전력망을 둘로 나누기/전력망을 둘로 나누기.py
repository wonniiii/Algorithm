from collections import deque

def solution(n, wires):
    answer = n
    graph = [[] for _ in range(n + 1)]

    for start, end in wires:
        graph[start].append(end)
        graph[end].append(start)

    def bfs(start, blocked_a, blocked_b):
        q = deque([start])
        visited = [False] * (n + 1)
        visited[start] = True
        cnt = 1

        while q:
            u = q.popleft()
            for v in graph[u]:
                if (u == blocked_a and v == blocked_b) or (u == blocked_b and v == blocked_a):
                    continue

                if not visited[v]:
                    visited[v] = True
                    cnt += 1
                    q.append(v)
        return cnt

    for a, b in wires:
        size = bfs(a, a, b)               
        diff = abs(size - (n - size))     
        answer = min(answer, diff)

    return answer
