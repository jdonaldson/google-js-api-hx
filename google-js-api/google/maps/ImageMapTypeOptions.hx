/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

This class is used to create a MapType that renders
image tiles.

*/
package google.maps;
import js.Dom;

extern class ImageMapTypeOptions {

/*
Name to display in the MapTypeControl.
*/
public var name : String;

/*
Returns a string (URL) for given tile coordinate (x, y) and zoom level.
This function should have a signature of:
getTileUrl(Point, number):string
*/
public var getTileUrl : Point->Float->String;

/*
The maximum zoom level for the map when displaying this MapType.
*/
public var maxZoom : Float;

/*
Is the image a PNG?  This is needed by some old browsers.
*/
public var isPng : Bool;

/*
The tile size.
*/
public var tileSize : Size;

/*
The minimum zoom level for the map when displaying this MapType.
Optional.
*/
public var minZoom : Float;

/*
The opacity to apply to the tiles.  The opacity should be specified as
a float value between 0 and 1.0, where 0 is fully transparent and 1 is fully
opaque.
*/
public var opacity : Float;

/*
Alt text to display when this MapType's button is hovered over in the
MapTypeControl.
*/
public var alt : String;


}
