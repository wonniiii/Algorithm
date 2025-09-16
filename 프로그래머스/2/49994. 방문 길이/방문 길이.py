
def solution(dirs):
    move = {
        'U': (0,1),
        'D': (0,-1),
        'L': (-1,0),
        'R': (1,0)
    }
    
    x,y = 0,0
    visited = set()
    
    for d in dirs:
        dx, dy = move[d]
        nx, ny = dx+x, dy+y
        
        if not (-5 <= nx <= 5 and -5 <= ny <= 5):
            continue
        
        edge = tuple(sorted([(x, y), (nx, ny)]))
        visited.add(edge)
        
        x, y = nx, ny
    
    return len(visited)