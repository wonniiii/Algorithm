def solution(dartResult):
    num = []
    length = len(dartResult)
    
    for i in range(length):
        if dartResult[i].isdigit():
            if i+1 < length and dartResult[i+1].isdigit():
                score = int(dartResult[i:i+2])
                i+=2
            else:
                score = int(dartResult[i])
                i+=1
            
            if dartResult[i] == 'S':
                score = score ** 1
            elif dartResult[i] == 'D':
                score = score ** 2
            elif dartResult[i] == 'T':
                score = score ** 3
            
            num.append(score)
            
        elif dartResult[i] == '*':
            if len(num) > 1:
                num[-2] *= 2
            num[-1] *= 2
        elif dartResult[i] == '#':
            num[-1] *= -1
                
    return sum(num)