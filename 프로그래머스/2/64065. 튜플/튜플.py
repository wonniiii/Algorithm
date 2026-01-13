from collections import Counter
import re

def solution(s):
    nums = list(map(int, re.findall(r'\d+', s)))
    cnt = Counter(nums)
    return [num for num, _ in cnt.most_common()]
