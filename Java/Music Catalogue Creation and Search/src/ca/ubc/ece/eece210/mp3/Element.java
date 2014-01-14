package ca.ubc.ece.eece210.mp3;

import java.util.ArrayList;
import java.util.List;

public abstract class Element {
	
	private ArrayList<Element> children = new ArrayList<Element>();

	/**
	 * Returns all the children of this entity. They can be albums or
	 * genres. In this particular application, only genres can have
	 * children. Therefore, this method will return the albums or genres
	 * contained in this genre.
	 * 
	 * @return ArrayList containing all the children
	 */
	public List<Element> getChildren() {
		return children;
	}

	/**
	 * Adds a child to this entity. 
	 * 
	 * @param b
	 *            the entity to be added.
	 *            
	 * @throws UnsupportedOperationException when trying to add child to an album
	 */
	protected void addChild(Element b){
		
		if (this.hasChildren() == false)
			throw new UnsupportedOperationException("Albums cannot contain children");
		else if (children.contains(b) == false)
			children.add(b);
	
	}

	/**
	 * Abstract method to determine if a given entity can (or cannot) contain
	 * any children.
	 * 
	 * @return true if the entity can contain children, or false otherwise.
	 */
	public abstract boolean hasChildren();
}
