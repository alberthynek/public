package ca.ubc.ece.eece210.mp3.ast;

import java.util.HashSet;
import java.util.Set;

import ca.ubc.ece.eece210.mp3.Album;
import ca.ubc.ece.eece210.mp3.Element;
import ca.ubc.ece.eece210.mp3.Catalogue;
import ca.ubc.ece.eece210.mp3.Genre;

public class InNode extends ASTNode {
	HashSet<Element> inArgument;
	
    public InNode(Token token) {
	super(token);
    }

    
    /**
     * This method interprets the InNode and returns the set of Elements 
     * that satisfies the conditions of the InNode.
     * @param Catalogue to be interpreted on
     * @return Set of Elements that satisfy the criteria indicated by the InNode.
     */
    @Override
    public Set<Element> interpret(Catalogue mycatalogue) {
    inArgument = new HashSet<Element>();
    for (int i=0; i< mycatalogue.top_level.size(); i++){
    		interpretGenre(mycatalogue.top_level.get(i));
    	}
    	
	return inArgument;
    }


    /**
     * This method finds all albums that match the criteria indicated by the InNode within a given Genre (and its subgenres)
     * and adds them to the set of Elements contained in the interpret method that calls it. 
     * @param Genre to find albums in
     */
private void interpretGenre( Element currentGenre ){
	if (!currentGenre.hasChildren()) return;
	for (int i=0; i<currentGenre.getChildren().size(); i++){
		if (((Genre)currentGenre).getName().matches(arguments))
			addAlbums((Genre)currentGenre);
		else if (currentGenre.getChildren().get(i).hasChildren()){
			if (((Genre)currentGenre.getChildren().get(i)).getName().matches(arguments)){
				addAlbums((Genre)currentGenre.getChildren().get(i));
			}
			else interpretGenre(currentGenre.getChildren().get(i));
		}
	}
	return;
}



private void addAlbums(Genre currentGenre){
	for (int i=0; i<currentGenre.getChildren().size(); i++){
		if (!currentGenre.getChildren().get(i).hasChildren()) 
			inArgument.add(currentGenre.getChildren().get(i));
			
		else addAlbums((Genre)currentGenre.getChildren().get(i));
	}
}

}


//TODO write recursive method to check names of genres to be called by interpret method
