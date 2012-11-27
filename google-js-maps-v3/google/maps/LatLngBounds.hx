/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A LatLngBounds instance
represents a rectangle in geographical coordinates, including one that
crosses the 180 degrees longitudinal meridian.

*/
package google.maps;
import js.Dom;

extern class LatLngBounds {

/*
Constructs a rectangle from the points at its south-west
and north-east corners.

*/
public function new(?sw:LatLng, ?ne:LatLng) : Void;

/*
Returns a string of the form "lat_lo,lng_lo,lat_hi,lng_hi" for this
bounds, where "lo" corresponds to the southwest corner of the
bounding box, while "hi" corresponds to the northeast corner of that box.

*/
public function toUrlValue(?precision:Float) : String;

/*
Extends this bounds to contain the union of this and the given bounds.
*/
public function union(other:LatLngBounds) : LatLngBounds;

/*
Extends this bounds to contain the given point.
*/
public function extend(point:LatLng) : LatLngBounds;

/*
Returns true if the given lat/lng is in this bounds.
*/
public function contains(latLng:LatLng) : Bool;

/*
Converts to string.
*/
public function toString() : String;

/*
Converts the given map bounds to a lat/lng span.
*/
public function toSpan() : LatLng;

/*
Returns if the bounds are empty.
*/
public function isEmpty() : Bool;

/*
Returns the north-east corner of this bounds.
*/
public function getNorthEast() : LatLng;

/*
Computes the center of this LatLngBounds
*/
public function getCenter() : LatLng;

/*
Returns true if this bounds shares any points with this bounds.
*/
public function intersects(other:LatLngBounds) : Bool;

/*
Returns true if this bounds approximately equals the given bounds.
*/
public function equals(other:LatLngBounds) : Bool;

/*
Returns the south-west corner of this bounds.
*/
public function getSouthWest() : LatLng;


}
