package ca.ubc.ece.eece210.mp3.ast;

import java.util.Set;

import ca.ubc.ece.eece210.mp3.Element;
import ca.ubc.ece.eece210.mp3.Catalogue;

/**
 * 
 * @author Sathish Gopalakrishnan
 *
 */

public class AndNode extends ASTNode {

    public AndNode(Token token) {
	super(token);
    }

    @Override
    public Set<Element> interpret(Catalogue mycatalogue) {
    Set<Element> AndOfChildren = children.get(0).interpret(mycatalogue);
    AndOfChildren.retainAll(children.get(1).interpret(mycatalogue));
    return AndOfChildren;
    }

}
