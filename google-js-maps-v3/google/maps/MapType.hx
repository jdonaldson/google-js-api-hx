/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

This interface defines map type. This interface
is typically used for base maps such as road, satellite
or hybrid maps. Immutable.

*/
package google.maps;
import js.Dom;

extern class MapType {

/*
Radius of the planet for the map, in meters.
Optional; defaults to Earth's equatorial radius of 6378137 meters.
*/
public var radius : Float;

/*
Name to display in the MapTypeControl. Optional.
*/
public var name : String;

/*
The maximum zoom level for the map when displaying this MapType.
Required for base MapTypes, ignored for overlay MapTypes.
*/
public var maxZoom : Float;

/*
The dimensions of each tile.
Required.
*/
public var tileSize : Size;

/*
The minimum zoom level for the map when displaying this MapType.
Optional; defaults to 0.
*/
public var minZoom : Float;

/*
The Projection used to render this MapType.
Optional; defaults to Mercator.
*/
public var projection : Projection;

/*
Alt text to display when this MapType's button is hovered over in the
MapTypeControl. Optional.
*/
public var alt : String;

/*
Returns a tile for the given tile coordinate (x, y) and zoom level.
This tile will be appended to the given ownerDocument.
*/
public function getTile(tileCoord:Point, zoom:Float, ownerDocument:Document) : HtmlDom;

/*
Releases the given tile, performing any necessary cleanup.
The provided tile will have already been removed from the document.
Optional.
*/
public function releaseTile(tile:HtmlDom) : Void;


}
