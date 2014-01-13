package ca.ubc.ece.eece210.mp3;

import java.util.ArrayList;

/**
 * 
 * @author Sathish Gopalakrishnan
 * 
 * This class contains the information needed to represent 
 * an album in our application.
 * 
 */

public final class Album extends Element {
	private String title;
	private String performer;
	private ArrayList<String> songlist = new ArrayList<String>();
	private Genre genre = null;
	
	/**
	 * Builds an album with the given title, performer and song list, and adds the Album to the "unclassified"
	 * Genre by default
	 * 
	 * @param title
	 *            the title of the album
	 * @param performer
	 *            the performer 
	 * @param songlist
	 * 			  the list of songs in the album
	 */
	public Album(String title, String performer, ArrayList<String> songlist) {
		this.title = title;
		this.performer = performer;
		for (int i = 0; i < songlist.size(); i++)
			this.songlist.add(songlist.get(i));
		addToGenre(Catalogue.unclassifiedGenre);
	}

	/**
	 * Builds an album from the string representation of the object. It is used
	 * when restoring an album from a file. Adds the reconstructed album to the "unclassified" genre by default
	 * 
	 * @param stringRepresentation
	 *            the string representation, must be formatted correctly
	 */
	public Album(String stringRepresentation) {
		char quote = '"';
		char comma = ',';
		int i = 1;
		title = new String ();
		performer = new String ();
		
		while (stringRepresentation.charAt(i)!=quote && stringRepresentation.charAt(i+1)!=comma) {
			title = title.concat(stringRepresentation.substring(i, i+1));
			i++;
		}
		i = i+3;
			
		while (stringRepresentation.charAt(i)!=quote && stringRepresentation.charAt(i+1)!=comma) {
			performer = performer.concat(stringRepresentation.substring(i, i+1));
			i++;
		}
		i = i+3;
		
		
		while (i+1<stringRepresentation.length()) {
			String song = new String ();
			
			while (stringRepresentation.charAt(i)!=quote && stringRepresentation.charAt(i+1)!=comma){
				song = song.concat(stringRepresentation.substring(i, i+1));
				i++;	
			}
			songlist.add(song);
			i = i+3;
		}
		
		addToGenre(Catalogue.unclassifiedGenre);
	
	}
		

	/**
	 * Returns the string representation of the given album. The representation
	 * contains the title, performer and songlist
	 * 
	 * @return the string representation
	 */
	public String getStringRepresentation() {
		char quote = '"';
		char comma = ',';
		String stringRep = new String(quote + title + quote + comma);
		
		stringRep = stringRep.concat(quote + performer + quote + comma);
		
		for (int i = 0; i < songlist.size(); i++){
			stringRep = stringRep.concat(quote + songlist.get(i) + quote + comma);
		}
		stringRep = stringRep.substring(0, stringRep.length()-1);
		return stringRep;
	}

	/**
	 * Add the album to the given genre, remove from its previous genre. Sets internal Genre reference to the appropriate Genre
	 * 
	 * @param genre
	 *            the genre to add the album to.
	 */
	public void addToGenre(Genre genre) {
		if (this.genre!=null) 
			this.genre.getChildren().remove(this);
		genre.addToGenre(this);
		this.genre = genre;	
	}
	
	/**
	 * Removes the album from its existing Genre
	 * 
	 */
	public void removeFromGenre() {
		this.genre.getChildren().remove(this);
		this.addToGenre(Catalogue.unclassifiedGenre);

	}
	

	/**
	 * Returns the genre that this album belongs to.
	 * 
	 * @return the genre that this album belongs to
	 */
	public Genre getGenre() {
		return genre;
	}

	/**
	 * Returns the title of the album
	 * 
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * Returns the performer of the album
	 * 
	 * @return the performer
	 */
	public String getPerformer() {
		return performer;
	}
	
	/**
	 * Returns the songlist of the album
	 * @return ArrayList containing all songs in the album
	 */
	
	public ArrayList<String> getSonglist() {
		return songlist;
	}

	/**
	 * An album cannot have any children (it cannot contain anything).
	 * @return false (always)
	 */
	@Override
	public boolean hasChildren() {
		return false;
	}
	
	/**
	 * Overrides default toString method, making it possible to cast the album as a string, returning its string representation
	 * @return string representation of the album
	 */
	@Override
	public String toString(){
	return getStringRepresentation();
	}
	
	/**
	 * Overrides default equals method
	 * Returns true if objects have same references or if albums have same titles and performers
	 * @param object
	 * 			The object being compared to this
	 * @return Whether or not the objects are equal according to the the equality rules outlined
	 */
	@Override
	public boolean equals(Object object){
		Album album;
		if (object instanceof Album)
			album  = (Album)object;
		else return false;
		
		if (this!=album){
			if (this.hashCode()!=album.hashCode()) return false;
			if (this.getTitle().equals(album.getTitle()) && this.getPerformer().equals(album.getPerformer()))
				return true;
			else
				return false;
		}
		else
			return true;
	}
	
	
	@Override
	public int hashCode(){
		final int prime = 31;
		int result = 1;
		result = prime * result + ((title == null ) ? 0 : title.hashCode() );
		result = prime * result + ((performer == null) ? 0 : performer.hashCode());
		result = prime * result;
		return result;
	}
	
}
