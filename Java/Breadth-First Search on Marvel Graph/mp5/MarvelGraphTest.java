

import static org.junit.Assert.*;

import java.util.LinkedList;

import org.junit.Test;

public class MarvelGraphTest{
	public static MarvelGraph test = new MarvelGraph("Marvel.txt");;
	
	@Test
	public void graphCreationTest() {
		//Checks that the bookmap contains real books, the correct number of books, and prints the characters in a book 
		//for visual inspection
		assertTrue(test.getMap("BookMap").containsKey("AA2 34"));
		assertEquals(test.getMap("BookMap").keySet().size(), 12849);
		System.out.println(test.getMap("BookMap").get("AA2 34"));
		
		//Checks that the charmap contains real characters, the correct number of characters, and prints the books associated
		//with a character for visual inspection
		assertTrue(test.getMap("CharMap").containsKey("OLD SKULL"));
		assertEquals(test.getMap("CharMap").keySet().size(), 6444);
		System.out.println(test.getMap("CharMap").get("OLD SKULL"));
		
		//Checks that the graphmap contains real characters, the correct number of characters, and prints the neighbours associated
		//with a character for visual inspection
		assertTrue(test.getMap("GraphMap").containsKey("OLD SKULL"));
		assertEquals(test.getMap("GraphMap").keySet().size(), 6444);
		System.out.println(test.getMap("GraphMap").get("OLD SKULL"));
		
	}
	
	@Test
	public void graphSearchTest() {
		
		//Checks that the path from Captain America to Old Skull passes through Hawk, and that Hawk and Captain America are the only
		//two Characters in the path
		LinkedList<String> path = test.findPath("CAPTAIN AMERICA", "OLD SKULL");
		assertTrue(path.contains("HAWK") && path.size()==2);
		//Checks that the path from Old Skull to Captain America passes through Hawk, and that Hawk and Old Skull are the only
		//two Characters in the path
		path = test.findPath("OLD SKULL", "CAPTAIN AMERICA");
		assertTrue(path.contains("HAWK") && path.size()==2);
		//Checks that the path from our most central character and Danny Callahan (a completely isolated character) is non-existant
		//and that the correct message is returned
		path = test.findPath("CALLAHAN, DANNY", "CAPTAIN AMERICA");
		assertTrue(path.contains("No Path Found") && path.size()==1);
		//Checks that the path from one character to itself (even an isolated character) returns a path containing no characters
		path = test.findPath("CALLAHAN, DANNY", "CALLAHAN, DANNY");
		assertTrue(path.size()==0);
	}
	
	@Test
	public void graphCentralityTest() {
		//Checks that the central character is Captain America
		assertTrue(test.findCentralChar().contains("CAPTAIN AMERICA"));
	}
	
	@Test
	
	//Checks that sortPaths() is correctly sorting paths lexicographically
	public void testSort(){
				LinkedList<LinkedList<String>> test2 = new LinkedList<LinkedList<String>>();
				LinkedList<String> one = new LinkedList<String>();
				LinkedList<String> two = new LinkedList<String>();
				LinkedList<String> three = new LinkedList<String>();
				String a = new String("a");
				String b = new String("b");
				String c = new String("c");
				
				one.add(a);
				one.add(a);
				one.add(b);
				
				two.add(a);
				two.add(a);
				two.add(c);
				
				three.add(b);
				three.add(a);
				three.add(a);
				
				test2.add(two);
				test2.add(one);
				test2.add(three);
				
				
				assertTrue(test.sortPaths(test2).equals(one));
	}

}
