import math
from collections import defaultdict

def solution(fees, records):
    basicTime, basicFee, addTime, addFee = fees
    inDict = {}
    endTime = 23 * 60 + 59
    totalTime = defaultdict(int)

    for i in records:
        timeStr, car, act = i.split(" ")
        h,m = map(int,timeStr.split(":"))
        t = h * 60 + m

        if act == "IN":
            inDict[car] = t
        else:
            totalTime[car] += t - inDict[car]
            del inDict[car]

    for car, inT in inDict.items():
        totalTime[car] += endTime - inT

    feeDict = {}
    for car, t in totalTime.items():
        if t <= basicTime:
            feeDict[car] = basicFee
        else:
            feeDict[car] = basicFee + math.ceil((t-basicTime)/addTime) * addFee


    return [fee for car, fee in sorted(feeDict.items())]