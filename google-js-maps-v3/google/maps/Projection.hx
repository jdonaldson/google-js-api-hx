/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation



*/
package google.maps;
import js.Dom;

extern class Projection {

/*
This interface specifies a function which implements translation from world
coordinates on a map projection to LatLng values. The Maps API
calls this method when it needs to translate actions on screen to positions
on the map. Projection objects must implement this method.
*/
public function fromPointToLatLng(pixel:Point, ?nowrap:Bool) : LatLng;

/*
Translates from the LatLng cylinder to the Point plane.
This interface specifies a function which implements translation from given
LatLng values to world coordinates on the map projection. The
Maps API calls this method when it needs to plot locations on screen.
Projection objects must implement this method.
*/
public function fromLatLngToPoint(latLng:LatLng, ?point:Point) : Point;


}
