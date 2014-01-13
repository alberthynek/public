

import static org.junit.Assert.*;
import java.util.*;

import org.junit.Test;

public class MarvelUniverseTest {

	@Test
	public void fileParseTest() {
		MarvelUniverse marvel = new MarvelUniverse("Marvel.txt");

		//Checks that all lines have been parsed (correct number of lines)
		assertEquals(marvel.size(), 96655);
		//Checks that first line is correct
		assertTrue(marvel.getStringrep(0).equals("\"FROST, CARMILLA\"	\"AA2 35\""));
		//Checks that last line is correct
		assertTrue(marvel.getStringrep(96654).equals("\"KILLRAVEN/JONATHAN R\"	\"AA2 38\""));
	}

}
