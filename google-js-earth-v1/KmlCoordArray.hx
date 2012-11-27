/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:39 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlCoordArray  extends KmlObjectPartial, implements ArrayAccess<KmlCoord>{
/*
Returns the coordinates at the given index.
*/
public function get( index : Int ) : KmlCoord;

/*
Sets the coordinates at the given index..
*/
public function set( index : Int, coord : KmlCoord ) : Void;

/*
Sets the latitude, longitude, and altitude.
*/
public function setLatLngAlt( index : Int, latitude : Float, longitude : Float, altitude : Float ) : Void;

/*
Appends one or more new elements to the end of an array and returns the new length of the array.
*/
public function pushLatLngAlt( latitude : Float, longitude : Float, altitude : Float ) : Int;

/*
Appends one or more new elements to the end of an array and returns the new length of the array.
*/
public function push( coordOrList : KmlObjectBase ) : Int;

/*
Deletes the last element of an array, decrements the array length, and returns the value that is removed.
*/
public function pop() : KmlCoord;

/*
Adds an element or elements to the beginning of an array.
*/
public function unshift( coordOrList : KmlObjectBase ) : Int;

/*
Adds an element or elements to the beginning of an array.
*/
public function unshiftLatLngAlt( latitude : Float, longitude : Float, altitude : Float ) : Int;

/*
Removes and returns the first element of the array.
*/
public function shift() : KmlCoord;

/*
Reverses the order of the elements in the array.
*/
public function reverse() : Void;

/*
Clears all of the elements in the array
*/
public function clear() : Void;

/*
Specifies the length of the index array.
*/
public function getLength() : Int;

}