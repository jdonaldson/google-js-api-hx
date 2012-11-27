/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:46 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlObjectList  extends GESchemaObject{
/*
Gets an item from the object list. For example, list.item(0) returns the first object in the list.
*/
public static function item( index : Int ) : KmlObject;

/*
Number of objects in collection.
*/
public static function getLength() : Int;

}