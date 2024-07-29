def solution(keymap, targets):
    char_to_min_presses = {}
    
    for key_index, key in enumerate(keymap):
        for press_count, char in enumerate(key):
            if char in char_to_min_presses:
                char_to_min_presses[char] = min(char_to_min_presses[char], press_count + 1)
            else:
                char_to_min_presses[char] = press_count + 1
    
    answer = []
    
    for target in targets:
        total_presses = 0
        for char in target:
            if char in char_to_min_presses:
                total_presses += char_to_min_presses[char]
            else:
                total_presses = -1
                break
        answer.append(total_presses)
    
    return answer

