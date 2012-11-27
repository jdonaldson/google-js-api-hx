/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:35 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GESchemaObjectContainer  extends GESchemaObject{
/*
Adds a node to the end of the list of children of a specified feature. Returns the appended object. Parameters:
  objectThe object to add to the container.
*/
public function appendChild( object : KmlObject ) : KmlObject;

/*
Removes a node from the list of children of a specified object. Parameters:
  oldChildchild to be removed
*/
public function removeChild( oldChild : KmlObject ) : KmlObject;

/*
Inserts a child before the referenced child in the list of objects. Parameters:
  newChildnew child to insert refChildreferenced child
*/
public function insertBefore( newChild : KmlObject, refChild : KmlObject ) : KmlObject;

/*
Replaces existing child in the list of features. Returns the old child.
*/
public function replaceChild( newChild : KmlObject, oldChild : KmlObject ) : KmlObject;

/*
Returns true if the container is not empty.
*/
public function hasChildNodes() : Bool;

/*
First child in the list of objects.
*/
public function getFirstChild() : KmlObject;

/*
Last child in the list of objects.
*/
public function getLastChild() : KmlObject;

/*
List of features (for KmlContainer), or list of features, styles, and schemas (for KmlDocument). Returns true if there are any child nodes.
*/
public function getChildNodes() : KmlObjectList;

}