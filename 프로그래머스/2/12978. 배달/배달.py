import heapq

def solution(N, road, K):
    graph = [[] for _ in range(N+1)]
    for start, arrive, time in road:
        graph[start].append((arrive,time))
        graph[arrive].append((start, time))
        
    INF = 10**15
    dist = [INF] * (N+1)
    dist[1] = 0
    pq = [(0,1)]

    while pq:
        time, arrive = heapq.heappop(pq)
        if time != dist[arrive]:
            continue

        for a, t in graph[arrive]:
            nt = t + time
            if nt < dist[a]:
                dist[a] = nt
                heapq.heappush(pq, (nt,a))
                
    return sum(1 for i in range(1,N+1) if dist[i] <= K)