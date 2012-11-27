/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

LatLng
is a point in geographical coordinates, latitude and longitude.

*/
package google.maps;
import js.Dom;

extern class LatLng {

/*
Notice the ordering of latitude and longitude.
If the noWrap flag is true, then the numbers will be
used as passed, otherwise latitude will be clamped to lie
between -90 degrees and +90 degrees, and longitude will be
wrapped to lie between -180 degrees and +180 degrees.

*/
public function new(lat:Float, lng:Float, ?noWrap:Bool) : Void;

/*
Returns a string of the form "lat,lng" for this LatLng. We round the lat/lng
values to 6 decimal places by default.

*/
public function toUrlValue(?precision:Float) : String;

/*
Converts to string representation.
*/
public function toString() : String;

/*
Returns the latitude in degrees.
*/
public function lat() : Float;

/*
Comparison function.
*/
public function equals(other:LatLng) : Bool;

/*
Returns the longitude in degrees.
*/
public function lng() : Float;


}
