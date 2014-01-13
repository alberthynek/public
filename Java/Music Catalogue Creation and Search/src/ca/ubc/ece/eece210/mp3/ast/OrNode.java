package ca.ubc.ece.eece210.mp3.ast;

import java.util.Set;

import ca.ubc.ece.eece210.mp3.Element;
import ca.ubc.ece.eece210.mp3.Catalogue;

public class OrNode extends ASTNode {

    public OrNode(Token token) {
	super(token);
    }

    
    /**
     * This method interprets the OrNode and returns the set of Elements 
     * that satisfies the conditions of the OrNode.
     * @param Catalogue to be interpreted on
     * @return Set of Elements that satisfy the criteria indicated by the OrNode.
     */
    @Override
    public Set<Element> interpret(Catalogue mycatalogue) {
    Set<Element> AndOfChildren = children.get(0).interpret(mycatalogue);
    AndOfChildren.addAll(children.get(1).interpret(mycatalogue));
    return AndOfChildren;
    }

}
