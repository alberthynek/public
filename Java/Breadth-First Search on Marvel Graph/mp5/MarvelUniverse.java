

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class MarvelUniverse {
	private static String line;
	private static String stringrep;
	private static int size;
	protected ArrayList<String> wholeLists = new ArrayList<String>();

	/* Parses a given file and creates a MarvelUniverse object that can be used to create a graph
	 * Requires a properly-formatted file (Character Name, Book Name) with one entry per line
	 * Displays an error and exits if filename is invalid
	 */
	
	public MarvelUniverse(String filename){

		try{
			BufferedReader readMarvel = new BufferedReader(new FileReader( filename ));
			
			while( (line = readMarvel.readLine()) != null ){
				wholeLists.add( line );
			}
			readMarvel.close();
		}
		
		catch( IOException e){
			System.err.println("Invalid Filename");
			System.exit(1);
		}
	}
	
	
	/*	Returns the specified line as a string
	 *  @param index - a valid index for which a line exists
	 *  Requires that a line exists at the given index
	 */
	
	public String getStringrep (int index){
		stringrep = wholeLists.get(index);
		return stringrep;
	
	}
	
	/*	Returns the size of (or number of lines in) this MarvelUniverse object
	 */
	
	public int size(){
		size = wholeLists.size();
		return size;
	}

}
