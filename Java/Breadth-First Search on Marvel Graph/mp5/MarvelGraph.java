import java.util.HashSet;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.StringTokenizer;

public class MarvelGraph {
	
	private HashMap<String, HashSet<String>> CharMap;
	private HashMap<String, HashSet<String>> BookMap;
	private HashMap<String, HashSet<String>> GraphMap;
	private MarvelUniverse marvel;
	
	
	/* Generates a graph from the given file. If formatted correctly, characters will be nodes, and comic books will be edges
	 * @param filename - path to file from which to generate the graph
	 * Requires the file be formatted correctly - Character Name, Book Name (one line per pair)
	 */
	
	public MarvelGraph (String filename){
		marvel = new MarvelUniverse(filename);
		GraphMap = new HashMap<String, HashSet<String>>();
		constructBookMap();
		constructCharMap();
		
		for( String character : CharMap.keySet()){
			HashSet<String> temp_booklist=CharMap.get(character);
			HashSet<String> temp_charlist = new HashSet<String>();
			for( String book : temp_booklist ){
			temp_charlist.addAll(BookMap.get(book));
			}
			temp_charlist.remove(character);
			GraphMap.put(character, temp_charlist);
		}
			
			
	}
	
	/*
	 * Finds the lexicographically shortest path between StartChar and DestChar, formatted as a LinkedList of joining characters.
	 * @param StartChar - Character from which search
	 * @param DestChar - Character to reach from StartChar
	 * 
	 * @returns the lexicographically least path from StarChar to DestChar, formatted as a LinkedList of Strings (characters).
	 * If either StartChar or DestChar do not exist in the graph, or no path is found, returns "No Path Found" as the only
	 * String in the LinkedList
	 */
	
	public LinkedList<String> findPath(String StartChar, String DestChar){
		LinkedList<String> queue= new LinkedList<String>();
		HashMap<String, LinkedList<String>> pathMap = new HashMap<String, LinkedList<String>>();
		queue.add(StartChar);
		pathMap.put(StartChar, new LinkedList<String>());
		LinkedList<LinkedList<String>> allPaths = new LinkedList<LinkedList<String>>();
		
		while (!queue.isEmpty()){
			String tempChar = queue.remove();
			if (tempChar.equals(DestChar))
				allPaths.add(pathMap.get(DestChar));
			if (GraphMap.containsKey(tempChar) && GraphMap.containsKey(DestChar) && !GraphMap.get(DestChar).isEmpty()){
				for ( String neighbour : GraphMap.get(tempChar)){
					if(pathMap.containsKey(neighbour)==false){
						LinkedList<String> currentPath = new LinkedList<String>();
						currentPath.addAll(pathMap.get(tempChar));
						currentPath.addLast(tempChar);
						pathMap.put(neighbour, currentPath);
						queue.add(neighbour);
					}
				if	(neighbour.equals(DestChar))
					allPaths.add(pathMap.get(neighbour));
				}
			}
		}
		
		if (!allPaths.isEmpty()) return sortPaths(allPaths);
		
		LinkedList<String> nopath = new LinkedList<String>();
		nopath.add("No Path Found");
		return nopath;
	}
	
	/*	Sorts a list of paths lexicographically and returns the lexicographically least path in the list
	 * 	Requires a LinkedList of paths (LinkedList of Strings)
	 * 
	 *  @param paths - LinkedList of Paths to sort, each path represented by a LinkedList of Strings
	 *  @returns a LinkedList of Strings (path) that is found to be lexicographically least
	 */
	/*private*/ LinkedList<String> sortPaths(LinkedList<LinkedList<String>> paths){
		LinkedList<String> lexLeast;
		LinkedList<String> current_list;
		
		lexLeast = paths.get(0);
		
		for (int i=1; i < paths.size(); i++){
			current_list = paths.get(i);
			for (int j=0; j < current_list.size(); j++){
				if (current_list.get(j).compareTo(lexLeast.get(j)) < 0){
					lexLeast = current_list;
					break;
				}
				else if(current_list.get(j).compareTo(lexLeast.get(j)) > 0){
					break;
				}
			}
		}
		
		return lexLeast;
	}
	
	/*	Finds a set of most central characters to the graph using the following definition of centrality:
	 * 	The most central character is the one with the highest number of immediate neighbours (nodes)
	 * 
	 * 	In most cases returns a HashSet containing a single most central characters, however in the event of
	 * 	multiple Characters being equally central, multiple characters will be present in the returned set
	 */
	public HashSet<String> findCentralChar() {
		HashSet<String> centralChars = new HashSet<String>();
		int max_neighbours = 0;
		for (String Character : GraphMap.keySet()){
			max_neighbours = Math.max(max_neighbours, GraphMap.get(Character).size());
		}
		for (String Character : GraphMap.keySet()){
			if (GraphMap.get(Character).size()==max_neighbours) centralChars.add(Character);
		}
		
		return centralChars;
	}
	
	
	/* Find a set of most central characters to the graph using the algorithm provided by Sathish
	 * (Character with the shortest maximum path length).
	 * Makes use of two additional (private) methods, findMaxPaths() and, by extension, findPathLength()
	 * 
	 * Returns a set of characters that have been found to be most (and equally) central to the graph
	 * 
	 * NOTE: Takes hours and hours to run (see findCentralChar() for much faster, accurate centralization method)
	 */
	public HashSet<String> findCentralChar_Complex(){
		int minLength = Integer.MAX_VALUE;
		HashSet<String> centralChars = new HashSet<String>();
		HashMap<String, Integer> pathLengths =	findMaxPaths();
		for (int currentLength : pathLengths.values()){
			if (currentLength<minLength && currentLength!=0)
			minLength = currentLength;
		}
		
		for (String currentChar : pathLengths.keySet()){
			int tempLength = pathLengths.get(currentChar);
			if (tempLength==minLength){
				centralChars.add(currentChar);
			}
		}
		
		return centralChars;
		
	}
	
	/* Finds the longest of all possible shortest paths for each character and stores it in a hashmap
	 * @returns a HashMap of Strings (Characters) > Integers (Maximum path lengths)
	 */
	private HashMap<String, Integer> findMaxPaths(){
		HashMap<String, Integer> pathLengths = new HashMap<String, Integer>();
		HashSet<String> toVisit = new HashSet<String>();
		toVisit.addAll(GraphMap.keySet());
		for(String currentChar : GraphMap.keySet()){
			int maxLength = 0;
			toVisit.remove(currentChar);
			for(String pathChar : toVisit){
				int tempLength = findPathLength(currentChar, pathChar);
				if (tempLength>maxLength && tempLength!=Integer.MAX_VALUE)
					maxLength=tempLength;
			}
				
			
			pathLengths.put(currentChar, maxLength);
		}
		return pathLengths;
	}
	
	/* Finds the length of the shortest path between two characters (similar to findPath, but only returns the length)
	 * @param StartChar - Character to search from
	 * @param DestChar - Character to search for
	 * @return integer (length of shortest path)
	 */
	private int findPathLength(String StartChar, String DestChar){
		LinkedList<String> queue= new LinkedList<String>();
		HashMap<String, Integer> pathMap = new HashMap<String, Integer>();
		queue.add(StartChar);
		pathMap.put(StartChar, 0);
		
		while (!queue.isEmpty()){
			String tempChar = queue.remove();
			if (tempChar.equals(DestChar)) return pathMap.get(DestChar);
			if (GraphMap.containsKey(tempChar) && GraphMap.containsKey(DestChar) && !GraphMap.get(DestChar).isEmpty()){
				for ( String neighbour : GraphMap.get(tempChar)){
					if(pathMap.containsKey(neighbour)==false){
						pathMap.put(neighbour, pathMap.get(tempChar)+1);
						queue.add(neighbour);
					}
				if (neighbour.equals(DestChar)) return pathMap.get(neighbour);	
				}
			}
		}
		
		return Integer.MAX_VALUE;
	}
	
	/* Constructs a Book --> Character map
	 * ONLY FOR USE INSIDE THE MarvelGraph(String Filename) CONSTRUCTOR
	 */
	
	private void constructBookMap(){
		BookMap = new HashMap<String, HashSet<String>>();
		String temp_char = new String();
		String temp_book = new String();
		HashSet<String> temp_charlist;
		for (int i = 0; i < marvel.size(); i++ ){
			String stringrep = marvel.getStringrep(i);
			StringTokenizer st = new StringTokenizer(stringrep);
			
			while( st.hasMoreTokens()){
				temp_char = st.nextToken("\""); // get character
				st.nextToken("\""); 			// this instruction skips the blank space
				temp_book = st.nextToken("\""); // get book
				
				if( BookMap.containsKey(temp_book) ){
					temp_charlist = BookMap.get(temp_book);
					temp_charlist.add(temp_char);
					BookMap.put(temp_book, temp_charlist);
				}
				else{
				temp_charlist = new HashSet<String>();
				temp_charlist.add(temp_char);
				BookMap.put(temp_book, temp_charlist);
				}
			}
		}
	}
	
	/* Constructs a Character --> Book map
	 * ONLY FOR USE INSIDE THE MarvelGraph(String Filename) CONSTRUCTOR
	 */
	private void constructCharMap(){
		CharMap = new HashMap<String, HashSet<String>>();
		String temp_char = new String();
		String temp_book = new String();
		HashSet<String> temp_booklist;
		for (int i = 0; i < marvel.size(); i++ ){
			String stringrep = marvel.getStringrep(i);
			StringTokenizer st = new StringTokenizer(stringrep);
			
			while( st.hasMoreTokens()){
				temp_char = st.nextToken("\""); // get character
				st.nextToken("\""); 			// this instruction skips the blank space
				temp_book = st.nextToken("\""); // get book
				
				if( CharMap.containsKey( temp_char )){
					temp_booklist = CharMap.get( temp_char );
					temp_booklist.add(temp_book);
					CharMap.put(temp_char, temp_booklist);
				}
				else{
				temp_booklist = new HashSet<String>();
				temp_booklist.add(temp_book);
				CharMap.put(temp_char, temp_booklist);
				}
			}
		}
	}
	
	
	/* Returns the requested map (either BookMap, CharMap, or GraphMap) 
	 * and returns GraphMap if requested map is not one of those three
	 */
	public HashMap<String, HashSet<String>> getMap(String map){
		if (map.equals("BookMap")) return BookMap;
		else if (map.equals("CharMap")) return CharMap;
		else return GraphMap;
	}
	
	/* Returns GraphMap
	 */
	public HashMap<String, HashSet<String>> getMap(){
		return GraphMap;
	}
	
	
	
}
