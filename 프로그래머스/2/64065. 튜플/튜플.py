import re
from collections import Counter

def solution(s):
    numbers = list(map(int, re.findall(r'\d+', s)))

    counter = Counter(numbers)

    result = [num for num, _ in counter.most_common()]
    return result