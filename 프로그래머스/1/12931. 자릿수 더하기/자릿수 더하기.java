import java.util.*;

public class Solution {
    public int solution(int n) {
        String str = Integer.toString(n);
        String strArr[] = str.split("");
        int answer = 0;
            
        for(String num: strArr) {
            answer += Integer.parseInt(num);
        }
        
        return answer;
    }
}