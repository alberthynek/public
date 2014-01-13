package ca.ubc.ece.eece210.mp3;

import static org.junit.Assert.*;

import org.junit.Test;

import java.util.ArrayList;

public class GenreTest {
	
	@Test
	//This test tests both creating the string representation, and restoring from string representation
	public void testStringRepresentation(){
		Genre rock = new Genre("rock");
		Genre progressiveRock = new Genre ("Progressive Rock");
		
		ArrayList<String> songlist1 = new ArrayList<String>();
		songlist1.add("Come Together");
		songlist1.add("Something");
		songlist1.add("Maxwell's Silver Hammer");
		songlist1.add("Oh! Darling");
		Album test1 = new Album("Abbey Road", "The Beatles", songlist1);
		
		ArrayList<String> songlist2 = new ArrayList<String>();
		songlist2.add("Speak to Me");
		songlist2.add("Breathe");
		songlist2.add("On the Run");
		songlist2.add("Time");
		Album test2 = new Album("Dark Side of the Moon", "Pink Floyd", songlist2);
		
		test1.addToGenre(rock);
		test2.addToGenre(progressiveRock);
		rock.addChild(progressiveRock);
		
		String stringRep = rock.getStringRepresentation();
		
		Genre restored = Genre.restoreCollection(stringRep);
		
		//The restored version of test1
		Album album1 = (Album)restored.getChildren().get(0);
		
		//The restored version of progressiveRock
		Genre subGenre1 = (Genre)restored.getChildren().get(1);
		
		//The restored version of test2
		Album album2 = (Album)subGenre1.getChildren().get(0);
		
		//Tests for album1/test1 to ensure they are the same
		assertTrue(album1.getTitle().equals(test1.getTitle()));
		assertTrue(album1.getPerformer().equals(test1.getPerformer()));
		assertTrue(album1.getSonglist().equals(test1.getSonglist()));
		
		//Tests for subGenre1/progressiveRock to ensure they are the same
		assertTrue(subGenre1.getName().equals(progressiveRock.getName()));
		assertTrue(subGenre1.getChildren().contains(album2));
		
		//Tests for album2/test2 to ensure they are the same
		assertTrue(album2.getTitle().equals(test2.getTitle()));
		assertTrue(album2.getPerformer().equals(test2.getPerformer()));
		assertTrue(album2.getSonglist().equals(test2.getSonglist()));
		
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
		
		Album A1 = new Album("Abbey Road", "The Beatles", songlist1);
		Album A2 = new Album("Abbey Road", "The Beatles", songlist1);
		Album A3 = new Album("Abbey Road", "The Beatles", songlist3);
		
		Genre G1 = new Genre("Rock");
		Genre G2 = new Genre("Rock");
		Genre G3 = new Genre("Rock");
		Genre G4 = new Genre("Rock");
		
		//Genre G1 and G2 are exactly the same(name and children)
		//Genre G3 has the same name but different children with same contents
		//Genre G4 has the same name but different children
		G1.addToGenre(A1);
		G2.addToGenre(A1);
		G3.addToGenre(A2);
		G4.addToGenre(A3);
		G4.addToGenre(A1);
		
		assertTrue(G1.equals(G2));  //Testing Symmetry
		assertTrue(G2.equals(G1));  //Testing Symmetry
		assertTrue(G3.equals(G3)); 
		assertTrue(G3.equals(G4));  //Testing Transitivity
		assertTrue(G4.equals(G1));  //Testing Transitivity
		
	}
	@Test
	public void hashCodeTest(){
		ArrayList<String> songlist1 = new ArrayList<String>();
		ArrayList<String> songlist2 = new ArrayList<String>();
		ArrayList<String> songlist3 = new ArrayList<String>();
		
		songlist1.add("songtitle1");
		songlist2.add("songtitle1");
		songlist3.add("songtitle3");
		
		Album A1 = new Album("Abbey Road", "The Beatles", songlist1);
		Album A2 = new Album("Abbey Road", "The Beatles", songlist1);
		Album A3 = new Album("Abbey Road", "The Beatles", songlist3);
		
		Genre G1 = new Genre("Jazz");
		Genre G2 = new Genre("Rock");
		Genre G3 = new Genre("Rock");
		Genre G4 = new Genre("Rock");
		
		G1.addToGenre(A1);
		G2.addToGenre(A1);
		G3.addToGenre(A2);
		G4.addToGenre(A3);
		G4.addToGenre(A1);
		
		System.out.println("Hashcode of G1 = " + G1.hashCode());
		System.out.println("Hashcode of G2 = " + G2.hashCode());
		System.out.println("Hashcode of G3 = " + G3.hashCode());
		System.out.println("Hashcode of G4 = " + G4.hashCode());
		
		assertTrue(G2.hashCode() == G2.hashCode());
		assertTrue(G2.hashCode() == G3.hashCode());
		assertTrue(G3.hashCode() == G4.hashCode());
		assertTrue(G4.hashCode() == G2.hashCode());
		
	}

}
