package ca.ubc.ece.eece210.mp3;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.io.*;

import ca.ubc.ece.eece210.mp3.ast.QueryParser;
import ca.ubc.ece.eece210.mp3.ast.QueryTokenizer;
import ca.ubc.ece.eece210.mp3.ast.Token;

public final class Catalogue {
	
	public ArrayList<Genre> top_level = new ArrayList<Genre>();
	public static Genre unclassifiedGenre = new Genre("unclassified");
	private PrintStream catalogueWriter;

	/**
	 * Builds a new, empty catalogue. Adds an empty "unclassified" genre to catalogue
	 */
	public Catalogue() {
		top_level.add(unclassifiedGenre);
	
	}

	/**
	 * Builds a new catalogue and restores its contents from the 
	 * given file. This includes all top-level genres, their sub-genres, and albums
	 * 
	 * @param fileName
	 *            the file from where to restore the library.
	 * @throws FileNotFoundException when given an invalid filename
	 */
	public Catalogue(String fileName) throws FileNotFoundException {
		String nextLine = new String();
		Scanner scanFile = new Scanner(new File(fileName));
		while (scanFile.hasNextLine()){
			nextLine = scanFile.nextLine();
			top_level.add(Genre.restoreCollection(nextLine));
		}
		
	}

	/**
	 * Saves the contents of the catalogue to a file with the given filename.
	 * @param fileName the file where to save the library
	 * @throws IOException when unable to create/write to the file
	 */
	public void saveCatalogueToFile(String fileName) throws IOException {
		catalogueWriter = new PrintStream( new File( fileName ) );
		
		for ( int i = 0; i < top_level.size(); i++ ){
			catalogueWriter.println( top_level.get(i) );
		}	
		
		
	}
	
	/**
	 * Searches the Catalogue and returns all albums within the Catalogue that match the given query
	 * @requires a properly formatted query 
	 * @param queryCat - Query to search the Catalogue with
	 * @return a List of all albums found to match the query
	 */
	public List<Album> query (String queryCat){
		
		List<Token> tokens = QueryTokenizer.tokenizeInput(queryCat);
		QueryParser parser = new QueryParser(tokens);
		ArrayList<Element> queryResults = new ArrayList<Element>(parser.getRoot().interpret(this));
		ArrayList<Album> queryResultsParsed = new ArrayList<Album>();
		for (int i=0; i<queryResults.size(); i++){
			if (!queryResults.get(i).hasChildren()) queryResultsParsed.add((Album)queryResults.get(i));
		}
		return queryResultsParsed;
	}
	
	
}
