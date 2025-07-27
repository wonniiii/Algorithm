
def solution(players, callings):
    player_idx = {}
    for i, name in enumerate(players):
        player_idx[name] = i    
    
    for name in callings:
        idx = player_idx[name]
        front = players[idx-1]
        
        players[idx], players[idx-1] = players[idx-1], players[idx]
        
        player_idx[name] -= 1
        player_idx[front] += 1
    return players