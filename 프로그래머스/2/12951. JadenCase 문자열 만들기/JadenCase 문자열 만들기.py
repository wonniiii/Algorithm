def solution(s):
    answer = ''
    
    if s[0].isdigit():
        answer += s[0]
        answer += s[1].lower()
        
        for i in range(2,len(s)):
            if s[i-1] == " ":
                answer += s[i].upper()
            else:
                answer += s[i].lower()
    else:
        answer += s[0].upper()
        
        for i in range(1,len(s)):
            if s[i-1] == " ":
                answer += s[i].upper()
            else:
                answer += s[i].lower()
    
    return answer