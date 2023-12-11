public class Main {
	public static void main(String[] args) {
		System.out.println("Create new MusicLibrary\n");

		MusicLibrary list = new MusicLibrary();
		
		System.out.println("Create 5 new songs objects\n");

		Song song1 = new Song("We will rock you", "Queen");
		Song song2 = new Song("Wind of change", "Scorpions");
		Song song3 = new Song("Never ending story", "Limahl");
		Song song4 = new Song("True survivor", "David Hasselhoff");
		Song song5 = new Song("Sunshine Reggae", "Laid Black");

		System.out.println("Add songs to the MusicLibrary\n");
		list.addSong(song1);
		list.addSong(song2);
		list.addSong(song3);
		list.addSong(song4);
		list.addSong(song5);

		System.out.println("Play random song");
		list.playRandomSong();
		
		System.out.println("Display list of songs");
		list.showList();

		System.out.println("\nRemove 1st song");
		list.removeSong(song1);

		System.out.println("\nDisplay list of songs after remove one");
		list.showList();



	}
}
