import java.util.*;

class Solution {
    public int solution(int[] scoville, int K) {
        PriorityQueue<Integer> pQ = new PriorityQueue<>();
        
        for(int i : scoville) {
            pQ.add(i);
        }
        
        int answer = 0;
        
        while(pQ.size() >= 2 && pQ.peek() < K) {
            
            int first = pQ.poll();
            int second = pQ.poll();
            
            int mix = first + (second * 2);
            pQ.add(mix);
            answer++;
        }
        
        if(pQ.peek() < K) {
            return -1;
        }
        
        return answer;
    }
}