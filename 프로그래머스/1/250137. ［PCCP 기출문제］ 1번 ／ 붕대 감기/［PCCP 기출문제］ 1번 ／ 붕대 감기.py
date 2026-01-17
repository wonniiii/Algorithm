def solution(bandage, health, attacks):
    basicHealth = health
    time, re, addRe = bandage
    cnt = 0
    success = 0
    
    for i in range(1,attacks[-1][0]+1):
    
        if cnt < len(attacks) and i == attacks[cnt][0]:
            success = 0
            health -= attacks[cnt][1]
            cnt += 1
            if health <= 0:
                return -1
        else:
            success += 1
            health = min(basicHealth, health + re)
            if success == time:
                success = 0
                health = min(basicHealth, health + addRe)
            
    return health