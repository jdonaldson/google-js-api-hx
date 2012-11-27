/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

The result of an ElevationService request, consisting
of the set of elevation coordinates and their elevation values. Note that
a single request may produce multiple ElevationResults.

*/
package google.maps;
import js.Dom;

extern class ElevationResult {

/*
The elevation of this point on Earth, in meters above sea level.
*/
public var elevation : Float;

/*
The location of this elevation result.
*/
public var location : LatLng;


}
