/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:43 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlCoordArray  extends KmlObjectPartial{
/*
Returns the coordinates at the given index.
*/
public static function get( index : Int ) : KmlCoord;

/*
Sets the coordinates at the given index..
*/
public static function set( index : Int, coord : KmlCoord ) : Void;

/*
Sets the latitude, longitude, and altitude.
*/
public static function setLatLngAlt( index : Int, latitude : Float, longitude : Float, altitude : Float ) : Void;

/*
Appends one or more new elements to the end of an array and returns the new length of the array.
*/
public static function pushLatLngAlt( latitude : Float, longitude : Float, altitude : Float ) : Int;

/*
Appends one or more new elements to the end of an array and returns the new length of the array.
*/
public static function push( coordOrList : KmlObjectBase ) : Int;

/*
Deletes the last element of an array, decrements the array length, and returns the value that is removed.
*/
public static function pop() : KmlCoord;

/*
Adds an element or elements to the beginning of an array.
*/
public static function unshift( coordOrList : KmlObjectBase ) : Int;

/*
Adds an element or elements to the beginning of an array.
*/
public static function unshiftLatLngAlt( latitude : Float, longitude : Float, altitude : Float ) : Int;

/*
Removes and returns the first element of the array.
*/
public static function shift() : KmlCoord;

/*
Reverses the order of the elements in the array.
*/
public static function reverse() : Void;

/*
Clears all of the elements in the array
*/
public static function clear() : Void;

/*
Specifies the length of the index array.
*/
public static function getLength() : Int;

}