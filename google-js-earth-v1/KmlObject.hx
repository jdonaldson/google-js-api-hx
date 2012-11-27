/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:39 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlObject  extends GEEventEmitter{
/*
The interface name (i.e. 'KmlPlacemark') of the object.
*/
public function getType() : String;

/*
Test whether this object is the same as another object. Useful for Chrome and Safari, where the comparison a==b sometimes fails for plugin objects.
*/
public function equals( compareTo : KmlObject ) : Bool;

/*
The unique ID of the KML object.
*/
public function getId() : String;

/*
The parent node of the KML object.
*/
public function getParentNode() : KmlObject;

/*
The document that owns the KML object.
*/
public function getOwnerDocument() : KmlDocument;

/*
Permanently deletes an object, allowing its ID to be reused. Attempting to access the object once it is released will result in an error.
Note:Calling this method is not required; JavaScript's garbage collector will automatically delete unused objects after some indeterminate amount of time.
*/
public function release() : Void;

}