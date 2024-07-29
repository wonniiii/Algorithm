def solution(participant, completion):
    dict = {}
    
    for person in participant:
        if person in dict:
            dict[person] += 1
        else:
            dict[person] = 1
    
    for person in completion:
        if person in dict:
            dict[person] -= 1
    
    for person in dict:
         if dict[person] == 1:
            return person