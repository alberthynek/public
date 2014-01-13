package ca.ubc.ece.eece210.mp3;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import static org.junit.Assert.*;

public class CatalogueTest{
	

	
	@Test
	public void createRestoreTest(){
		Catalogue test = new Catalogue();
		
		Genre rock = new Genre("Rock");
		Genre metal = new Genre("Metal");
		Genre progRock = new Genre ("Progressive Rock");
		
		ArrayList<String> songlist1 = new ArrayList<String>();
		songlist1.add("Come Together");
		songlist1.add("Something");
		songlist1.add("Maxwell's Silver Hammer");
		songlist1.add("Oh! Darling");
		Album album1 = new Album("Abbey Road", "The Beatles", songlist1);
		
		ArrayList<String> songlist2 = new ArrayList<String>();
		songlist2.add("Speak to Me");
		songlist2.add("Breathe");
		songlist2.add("On the Run");
		songlist2.add("Time");
		Album album2 = new Album("Dark Side of the Moon", "Pink Floyd", songlist2);
		
		ArrayList<String> songlist3 = new ArrayList<String>();
		songlist3.add("Moonchild");
		songlist3.add("Infinite Dreams");
		songlist3.add("Can I Play With Madness");
		songlist3.add("The Evil That Men Do");
		Album album3 = new Album("Seventh Son of a Seventh Son", "Iron Maiden", songlist3);
		
		album1.addToGenre(rock);
		album2.addToGenre(progRock);
		album3.addToGenre(metal);
		rock.addChild(progRock);
		
		test.top_level.add(rock);
		test.top_level.add(metal);
		
		try{
			test.saveCatalogueToFile("testfile.txt");
		
			Catalogue restored = new Catalogue("testfile.txt");
			
			//Restored version of rock
			Genre restGen1 = restored.top_level.get(1);
			//Restored version of metal
			Genre restGen2 = restored.top_level.get(2);
			
			//restored version of progRock
			Genre restSubGen1 = (Genre)restGen1.getChildren().get(1);
			
			//restored version of album1(Abbey Road)
			Album restAlbum1 = (Album)restGen1.getChildren().get(0);
			//restored version of album2(Dark Side of the Moon)
			Album restAlbum2 = (Album)restSubGen1.getChildren().get(0);
			//restored version of album3 (Seventh Son of a Seventh Son)
			Album restAlbum3 = (Album)restGen2.getChildren().get(0);
			
			//Tests for restGenre1/rock
			assertTrue(restGen1.getName().equals(rock.getName()));
			assertTrue(restAlbum1.getTitle().equals(album1.getTitle()));
			assertTrue(restAlbum1.getPerformer().equals(album1.getPerformer()));
			assertTrue(restAlbum1.getSonglist().equals(album1.getSonglist()));
			
			//Tests for restSubGen1/progRock
			assertTrue(restSubGen1.getName().equals(progRock.getName()));
			assertTrue(restAlbum2.getTitle().equals(album2.getTitle()));
			assertTrue(restAlbum2.getPerformer().equals(album2.getPerformer()));
			assertTrue(restAlbum2.getSonglist().equals(album2.getSonglist()));
			
			//Tests for restGen2/metal
			
			assertTrue(restGen2.getName().equals(metal.getName()));
			assertTrue(restAlbum3.getTitle().equals(album3.getTitle()));
			assertTrue(restAlbum3.getPerformer().equals(album3.getPerformer()));
			assertTrue(restAlbum3.getSonglist().equals(album3.getSonglist()));
			
			restored.saveCatalogueToFile("testfile2.txt");
			
		} catch (FileNotFoundException e) {
				System.out.println("File Not Found");
			} catch (IOException e) {
				System.out.println("Could not create file");
			}
		
		
		
		
	}
	
	
	@Test 
	public void CatalogueQueryTest() throws FileNotFoundException{
		// Uses catalogue created by createRestoreTest() stored in testfile.txt. This catalogue Contains 3 Genres
		// Rock - Abbey Road by The Beatles
		// Progressive Rock (Sub-genre of Rock) - Dark Side of the Moon by Pink Floyd
		// Metal - Seventh Son of a Seventh Son by Iron Maiden
		 
		 Catalogue toQuery = new Catalogue("testfile.txt");
		 Catalogue blank = new Catalogue();
		 //Combination of in Rock or by Pink Floyd or matches Seventh Son of a Seventh Son. Returns all albums present in catalogue
		 List<Album> query = toQuery.query("(in (\"Rock\") || by (\"Pink Floyd\")) || matches (\"Seventh Son of a Seventh Son\")");
		 assertTrue("Dark Side of the Moon".matches(query.get(0).getTitle()) && "Seventh Son of a Seventh Son".matches(query.get(1).getTitle()) && "Abbey Road".matches(query.get(2).getTitle()));
		 assertTrue(query.size()==3);
		 //In Progressive Rock. Returns only Dark Side of the Moon
		 query = toQuery.query("in (\"Progressive Rock\")");
		 assertTrue("Dark Side of the Moon".matches(query.get(0).getTitle()));
		 assertTrue(query.size()==1);
		 //In Rock. Returns Dark Side of the Moon and Abbey Road (as Progressive Rock is a subgenre of Rock)
		 query = toQuery.query("in (\"Rock\")");
		 assertTrue("Dark Side of the Moon".matches(query.get(0).getTitle()) && "Abbey Road".matches(query.get(1).getTitle()));	
		 assertTrue(query.size()==2);
		 //In Rock AND by Pink Floyd OR matches Seventh Son of a Seventh Son. Returns Dark Side of the Moon and Seventh Son of a Seventh Son
		 query = toQuery.query("(in (\"Rock\") && by (\"Pink Floyd\")) || matches (\"Seventh Son of a Seventh Son\")");
		 assertTrue("Dark Side of the Moon".matches(query.get(0).getTitle()) && "Seventh Son of a Seventh Son".matches(query.get(1).getTitle()));
		 assertTrue(query.size()==2);
		 //In Rock AND By Pink Floyd AND Matches Seventh Son... Result is empty
		 query = toQuery.query("(in (\"Rock\") && by (\"Pink Floyd\")) && matches (\"Seventh Son of a Seventh Son\")");
		 assertTrue(query.isEmpty());
		 //In Prog. Rock AND Matches Seventh Son.....Result is empty (checking that subgenre is not counted as its parent)
		 query = toQuery.query("(in (\"Progressive Rock\") && matches (\"Seventh Son of a Seventh Son\")");
		 assertTrue(query.isEmpty());
		 //By The Beatles AND Matches Abbey Road
		 query = toQuery.query("by (\"The Beatles\")) && matches (\"Abbey Road\")");
		 assertTrue("Abbey Road".matches(query.get(0).getTitle()));
		 assertTrue(query.size()==1);
	}
	
	@Test
	public void AlbumEqualityTest() {
		ArrayList<String> songs = new ArrayList<String>();
		songs.add("song1");songs.add("song2");
		ArrayList<String> songs2 = new ArrayList<String>();
		songs.add("song3");songs.add("song4");
		Album album1 = new Album("Album1", "Performer1", songs);
		Album album2 = new Album("Album1", "Performer1", songs);
		Album album3 = new Album("Album1", "Performer1", songs2);
		Album album4 = new Album("Album4", "Performer1", songs);
		Album album5 = new Album("Album1", "Performer5", songs);
		assertTrue(album1.equals(album2));
		assertTrue(album1.equals(album3));
		assertTrue(album1.equals(album1));
		assertFalse(album1.equals(album4));
		assertFalse(album1.equals(album5));
	}
	
	@Test
	public void GenreEqualityTest() {
		Genre genre1 = new Genre("Genre1");
		Genre genre2 = new Genre("Genre1");
		Genre genre3 = new Genre("Genre2");
		assertTrue(genre1.equals(genre2));
		assertTrue(genre1.equals(genre1));
		assertFalse(genre1.equals(genre3));
		assertTrue(genre2.equals(genre1));
	}
}