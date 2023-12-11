import java.util.ArrayList;
import java.lang.Math.*;

public class MusicLibrary {
	private ArrayList<Song> list;

	public MusicLibrary() {
		list = new ArrayList<>();
	}

	public void addSong(Song song) {
		list.add(song);
	}

	public void removeSong(Song song) {
		list.remove(song);
	}

	public void playRandomSong() {
		int num = (int) (list.size()* Math.random()); 
		System.out.println("Listen everybody! Now we are playing " + list.get(num));	
	}

	public void showList() {
		System.out.println(list);
	}

}
