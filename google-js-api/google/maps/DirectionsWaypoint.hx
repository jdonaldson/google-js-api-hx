/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A DirectionsWaypoint represents a location between
origin and destination through which the trip should be routed.


*/
package google.maps;
import js.Dom;

extern class DirectionsWaypoint {

/*
If true, indicates that this waypoint is a stop between
the origin and destination.  This has the effect of splitting the route into
two.  This value is true by default. Optional.
*/
public var stopover : Bool;

/*
Waypoint location. Can be an address string or LatLng.
Optional.
*/
public var location : Dynamic;


}
