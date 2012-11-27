/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation



*/
package google.maps;
import js.Dom;

extern class MapCanvasProjection {

/*
Computes the pixel coordinates of the given geographical location in the
DOM element that holds the draggable map.

*/
public function fromLatLngToDivPixel(latLng:LatLng) : Point;

/*
Computes the geographical coordinates from pixel coordinates
in the div that holds the draggable map.
*/
public function fromDivPixelToLatLng(pixel:Point) : LatLng;

/*
The width of the world in pixels in the current zoom level.

*/
public function getWorldWidth() : Int;

/*
Computes the geographical coordinates from pixel coordinates
in the map's container.
*/
public function fromContainerPixelToLatLng(pixel:Point) : LatLng;

/*
Computes the pixel coordinates of the given geographical location in the
DOM element the map's outer container.

*/
public function fromLatLngToContainerPixel(latLng:LatLng) : Point;


}
