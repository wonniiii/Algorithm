def solution(dirs):
    x, y = 0, 0
    visited = set()
    move = {
        'U':(0,-1),
        'D':(0,1),
        'R':(1,0),
        'L':(-1,0)
    }

    for d in dirs:
        dx, dy = move[d]
        nx, ny = x+dx, y+dy

        if nx < -5 or nx > 5 or ny < -5 or ny > 5:
            continue

        path1 = (nx, ny, x, y)
        path2 = (x, y, nx, ny)

        if path2 not in visited:
            visited.add(path1)
            visited.add(path2)

        x, y = nx, ny

    return len(visited) // 2