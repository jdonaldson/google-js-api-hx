/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A representation of distance as a numeric value and a display string.

*/
package google.maps;
import js.Dom;

extern class DirectionsDistance {

/*
A string representation of the distance value, using the
DirectionsUnitSystem specified in the request.
*/
public var text : String;

/*
The distance in meters.
*/
public var value : Float;


}
