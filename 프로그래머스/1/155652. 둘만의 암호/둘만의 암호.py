def solution(s, skip, index):
    answer = ''
    aList =[chr(i) for i in range(97,123)]
    skip = list(skip)
    
    new_list = [x for x in aList if (x not in skip)]
    new_list_len = len(new_list)

    for char in s:
        if char in new_list:
            current_index = new_list.index(char)
            new_index = (current_index + index) % new_list_len
            answer += new_list[new_index]
        else:
            answer += char 
            
    return answer