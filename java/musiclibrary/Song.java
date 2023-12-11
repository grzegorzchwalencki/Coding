public class Song {
	final String title;
	final String artist;

	public Song( String title, String artist) {
		this.title = title;
		this.artist = artist;
	}

	public String getTitle() {
		return title;
	}

	public String getArtist() {
		return artist;
	}

	public String toString() {
		return title +" - "+ artist;
	}
}
