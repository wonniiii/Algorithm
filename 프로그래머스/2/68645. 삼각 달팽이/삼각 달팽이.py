def solution(n):
    triangle = [[0] * i for i in range(1, n + 1)]
    
    dx = [1, 0, -1]  
    dy = [0, 1, -1]  
    
    x, y = 0, 0  
    num = 1  
    direction = 0  
    
    for i in range(n, 0, -1):  
        for _ in range(i):
            triangle[x][y] = num
            num += 1
            
            nx, ny = x + dx[direction], y + dy[direction]
            
            if not (0 <= nx < n and 0 <= ny < len(triangle[nx]) and triangle[nx][ny] == 0):
                direction = (direction + 1) % 3
                nx, ny = x + dx[direction], y + dy[direction]
            
            x, y = nx, ny
    
    result = []
    for row in triangle:
        result.extend(row)
    
    return result
