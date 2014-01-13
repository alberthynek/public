package ca.ubc.ece.eece210.mp3;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Test;

public class AlbumTest {
	
	
	@Test
	public void AlbumConstructorTest() {
		ArrayList<String> songlist = new ArrayList<String>();
		songlist.add("Come Together");
		songlist.add("Something");
		songlist.add("Maxwell's Silver Hammer");
		songlist.add("Oh! Darling");
		
		Album test = new Album("Abbey Road", "The Beatles", songlist);
		System.out.println("Title:" + test.getTitle());
		System.out.println("Performer:" + test.getPerformer());
		System.out.println("Songlist:" + test.getSonglist());
		System.out.println("String Rep:" + test);
		Album test2 = new Album(test.getStringRepresentation());
		System.out.println("String Rep:" + test2);
		Album test3 = new Album(test.getStringRepresentation());
		Genre rock = new Genre("rock & roll");
		Genre rock2 = new Genre("rock");
		test.addToGenre(rock);
		test2.addToGenre(rock);
		test3.addToGenre(rock2);
		test3.removeFromGenre();
		test3.removeFromGenre();
		rock.addToGenre(rock2);
		System.out.println(rock.getStringRepresentation());
		Genre rock3 = Genre.restoreCollection(rock.getStringRepresentation());
		System.out.println(rock3);
		System.out.println(Catalogue.unclassifiedGenre);
		
	}
	
	@Test
	public void testaddToGenre(){
		ArrayList<String> songlist = new ArrayList<String>();
		songlist.add("Come Together");
		songlist.add("Something");
		songlist.add("Maxwell's Silver Hammer");
		songlist.add("Oh! Darling");
		
		Album test = new Album("Abbey Road", "The Beatles", songlist);
		System.out.println("Title:" + test.getTitle());
		System.out.println("Performer:" + test.getPerformer());
		System.out.println("Songlist:" + test.getSonglist());
		System.out.println("String Rep:" + test);
		
		Genre rock = new Genre("rock & roll");
		test.addToGenre(rock);
		
		assertTrue(test.getGenre().equals(rock));
		assertTrue(rock.getChildren().contains(test));
	}
	
	@Test
	public void testremoveFromGenre(){
		ArrayList<String> songlist = new ArrayList<String>();
		songlist.add("Come Together");
		songlist.add("Something");
		songlist.add("Maxwell's Silver Hammer");
		songlist.add("Oh! Darling");
		
		Album test = new Album("Abbey Road", "The Beatles", songlist);
		
		Genre rock = new Genre("rock & roll");
		test.addToGenre(rock);
		test.removeFromGenre();
		assertTrue(test.getGenre().equals(Catalogue.unclassifiedGenre));
		assertFalse(rock.getChildren().contains(test));
	}
	
	@Test
	//Tests both the getStringRepresentation and the string restore method
	public void totalStringTest(){
		ArrayList<String> songlist = new ArrayList<String>();
		songlist.add("Come Together");
		songlist.add("Something");
		songlist.add("Maxwell's Silver Hammer");
		songlist.add("Oh! Darling");
		
		Album test1 = new Album("Abbey Road", "The Beatles", songlist);
		
		String stringRep = test1.getStringRepresentation();
		
		Album test2 = new Album(stringRep);
		
		assertTrue(test2.getTitle().equals(test1.getTitle()));
		assertTrue(test2.getPerformer().equals(test1.getPerformer()));
		assertTrue(test2.getSonglist().equals(test1.getSonglist()));
	}
	
	@Test
	//Tests symmetry and transitivity of equality
	public void equalsTest(){
		ArrayList<String> songlist1 = new ArrayList<String>();
		ArrayList<String> songlist2 = new ArrayList<String>();
		ArrayList<String> songlist3 = new ArrayList<String>();
		
		songlist1.add("songtitle1");
		songlist2.add("songtitle1");
		songlist3.add("songtitle3");
		
		// Album A1 and A2 have exactly the same title, singer, and songlist
		// A3 has same title and singer but different songlist
		Album A1 = new Album("Abbey Road", "The Beatles", songlist1);
		Album A2 = new Album("Abbey Road", "The Beatles", songlist2);
		Album A3 = new Album("Abbey Road", "The Beatles", songlist3);
		
		assertTrue(A1.equals(A2)); //Testing Symmetry
		assertTrue(A2.equals(A1)); //Testing Symmetry
		assertTrue(A2.equals(A2));
		assertTrue(A2.equals(A3)); //Testing Transitivity
		assertTrue(A3.equals(A1)); //Testing Transitivity
		
		System.out.println("Hashcode of A1 = "+A1.hashCode());
		System.out.println("Hashcode of A2 = "+A2.hashCode());
	}
	@Test
	//Tests hashCode of albums
	//If the title and the performer are the same, hashcode should be the same
	public void hasCodeTest(){
		ArrayList<String> songlist1 = new ArrayList<String>();
		ArrayList<String> songlist2 = new ArrayList<String>();
		ArrayList<String> songlist3 = new ArrayList<String>();
		
		songlist1.add("testing");
		songlist2.add("testing");
		songlist3.add("!!!!!");
		
		Album A1 = new Album("Abbey Road", "The Beatles", songlist1);
		Album A2 = new Album("Abbey Road", "The Beatles", songlist2);
		Album A3 = new Album("LiveWire", "SeoTaeJi", songlist3);
		
		
		System.out.println("Hashcode of A1 = " + A1.hashCode());
		System.out.println("Hashcode of A2 = " + A2.hashCode());
		System.out.println("Hashcode of A3 = " + A3.hashCode());
		
		assertTrue(A1.hashCode() == A2.hashCode());
		assertTrue(A2.hashCode() == A1.hashCode());
		
	}
}
