/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

Describes the type of location returned from a geocode.

*/
package google.maps;
import js.Dom;

extern class GeocoderLocationType {

/*
The returned result is approximate.
*/
public static var APPROXIMATE : Dynamic;

/*
The returned result reflects a precise geocode.
*/
public static var ROOFTOP : Dynamic;

/*
The returned result reflects an approximation (usually on a road)
interpolated between two precise points (such as intersections).
Interpolated results are generally returned when rooftop geocodes
are unavilable for a street address.
*/
public static var RANGE_INTERPOLATED : Dynamic;

/*
The returned result is the geometric center of a result such a
line (e.g. street) or polygon (region).
*/
public static var GEOMETRIC_CENTER : Dynamic;


}
