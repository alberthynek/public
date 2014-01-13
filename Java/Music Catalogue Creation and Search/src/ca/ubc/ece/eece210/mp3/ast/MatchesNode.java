package ca.ubc.ece.eece210.mp3.ast;

import java.util.HashSet;
import java.util.Set;

import ca.ubc.ece.eece210.mp3.Album;
import ca.ubc.ece.eece210.mp3.Element;
import ca.ubc.ece.eece210.mp3.Catalogue;

public class MatchesNode extends ASTNode {
	
	HashSet<Element> matchesArgument;

    public MatchesNode(Token token) {
	super(token);
    }

    
    /**
     * This method interprets the MatchesNode and returns the set of Elements 
     * that satisfies the conditions of the MatchesNode.
     * @param Catalogue to be interpreted on
     * @return Set of Elements that satisfy the criteria indicated by the MatchesNode.
     */
    @Override
    public Set<Element> interpret(Catalogue mycatalogue) {
    matchesArgument = new HashSet<Element>();
    for (int i=0; i< mycatalogue.top_level.size(); i++){
    		interpretGenre(mycatalogue.top_level.get(i));
    	}
    	
	return matchesArgument;
    }


    /**
     * This method finds all albums that match the criteria indicated by the MatchesNode within a given Genre (and its subgenres)
     * and adds them to the set of Elements contained in the interpret method that calls it. 
     * @param Genre to find albums in
     */   
private void interpretGenre( Element currentGenre ){
	if (!currentGenre.hasChildren()) return;
	for (int i=0; i<currentGenre.getChildren().size(); i++){
		if (!currentGenre.getChildren().get(i).hasChildren()){
			if (((Album)currentGenre.getChildren().get(i)).getTitle().matches(arguments)){
				matchesArgument.add(currentGenre.getChildren().get(i));
			}
		}
		else interpretGenre(currentGenre.getChildren().get(i));
	}
	return;
}

}
