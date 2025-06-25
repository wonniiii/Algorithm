import java.util.*;

class Song implements Comparable<Song>{
    int id;
    int play;
    
    public Song(int id, int play) {
        this.id = id;
        this.play = play;
    }
    
    @Override
    public int compareTo(Song other) {
        if(this.play != other.play) {
            return other.play - this.play;
        } else {
            return this.id - other.id;
        }
    }
}


class Solution {
    public int[] solution(String[] genres, int[] plays) {
        int[] answer = {};
        int num = genres.length;
        
        HashMap<String, Integer> allPlay = new HashMap<String, Integer>();
        HashMap<String, List<Song>> eachPlay = new HashMap<String, List<Song>>();

        for(int i = 0; i<num; i++) {
            String genre = genres[i];
            int play = plays[i];
            
            allPlay.merge(genre, play, Integer::sum);
            eachPlay.putIfAbsent(genre, new ArrayList<>());
            eachPlay.get(genre).add(new Song(i, play));    
        }
        
        List<String> sortedGenres = new ArrayList<>(allPlay.keySet());
        sortedGenres.sort((g1, g2) -> allPlay.get(g2) - allPlay.get(g1));
        
        List<Integer> result = new ArrayList<>();
        for(String genre: sortedGenres) {
            List<Song> songList = eachPlay.get(genre);
            Collections.sort(songList);
            
           for (int i = 0; i < Math.min(2, songList.size()); i++) {
                result.add(songList.get(i).id);
            }
        }
        return result.stream().mapToInt(i -> i).toArray();
    }
}