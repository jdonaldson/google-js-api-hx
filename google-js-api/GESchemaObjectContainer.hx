/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:30 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GESchemaObjectContainer  extends GESchemaObject{
/*
Adds a node to the end of the list of children of a specified feature. Returns the appended object. Parameters:
  object The object to add to the container.
*/
public static function appendChild( object : KmlObject ) : KmlObject;

/*
Removes a node from the list of children of a specified object. Parameters:
  oldChild child to be removed
*/
public static function removeChild( oldChild : KmlObject ) : KmlObject;

/*
Inserts a child before the referenced child in the list of objects. Parameters:
  newChild new child to insert refChild referenced child
*/
public static function insertBefore( newChild : KmlObject, refChild : KmlObject ) : KmlObject;

/*
Replaces existing child in the list of features. Returns the old child.
*/
public static function replaceChild( newChild : KmlObject, oldChild : KmlObject ) : KmlObject;

/*
Returns true if the container is not empty.
*/
public static function hasChildNodes() : Bool;

/*
First child in the list of objects.
*/
public static function getFirstChild() : KmlObject;

/*
Last child in the list of objects.
*/
public static function getLastChild() : KmlObject;

/*
List of features (for KmlContainer), or list of features, styles, and schemas (for KmlDocument). Returns true if there are any child nodes.
*/
public static function getChildNodes() : KmlObjectList;

}