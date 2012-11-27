/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

The properties of the tile set used in a Street View panorama.

*/
package google.maps;
import js.Dom;

extern class StreetViewTileData {

/*
The size (in pixels) at which tiles will be rendered.
This may not be the native tile image size.
*/
public var tileSize : Size;

/*
The heading (in degrees) at the origin of the panoramic tiles.
*/
public var originHeading : Float;

/*
The size (in pixels) of the whole panorama's "world".
*/
public var worldSize : Size;

/*
Gets the tile image URL for the specified tile.pano is the panorama ID of the Street View tile.tileZoom is the zoom level of the tile.tileX is the x-coordinate of the tile.tileY is the y-coordinate of the tile.
Returns the URL for the tile image.
*/
public function getTileUrl(pano:String, tileZoom:Float, tileX:Float, tileY:Float) : String;


}
