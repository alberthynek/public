package ca.ubc.ece.eece210.mp3.ast;

import java.util.HashSet;
import java.util.Set;

import ca.ubc.ece.eece210.mp3.Element;
import ca.ubc.ece.eece210.mp3.Catalogue;
import ca.ubc.ece.eece210.mp3.Album;

public class ByNode extends ASTNode {
	
	HashSet<Element> byArgument;

    public ByNode (Token token) {
	super(token);
    }

    /**
     * This method interprets the ByNode and returns the set of Elements 
     * that satisfies the conditions of the ByNode.
     * @param Catalogue to be interpreted on
     * @return Set of Elements that satisfy the criteria indicated by the ByNode.
     */
    @Override
    public Set<Element> interpret(Catalogue mycatalogue) {
    byArgument = new HashSet<Element>();
    for (int i=0; i< mycatalogue.top_level.size(); i++){
    		interpretGenre(mycatalogue.top_level.get(i));
    	}
    	
	return byArgument;
    }


    /**
     * This method finds all albums that match the criteria indicated by the ByNode within a given Genre (and its subgenres)
     * and adds them to the set of Elements contained in the interpret method that calls it. 
     * @param Genre to find albums in
     */
private void interpretGenre( Element currentGenre){
	if (!currentGenre.hasChildren()) return;
	for (int i=0; i<currentGenre.getChildren().size(); i++){
		if (!currentGenre.getChildren().get(i).hasChildren()){
			if (((Album)currentGenre.getChildren().get(i)).getPerformer().matches(arguments)){
				byArgument.add(currentGenre.getChildren().get(i));
			}
		}
		else interpretGenre(currentGenre.getChildren().get(i));
	}
	return;
}
    
}
