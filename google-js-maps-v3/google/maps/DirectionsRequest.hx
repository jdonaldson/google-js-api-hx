/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A directions query to be sent to the
DirectionsService.

*/
package google.maps;
import js.Dom;

extern class DirectionsRequest {

/*
Region code used as a bias for geocoding requests. Optional.
*/
public var region : String;

/*
If set to true, the DirectionService will attempt to
re-order the supplied intermediate waypoints to minimize overall cost of the
route.
If waypoints are optimized, inspect
DirectionsRoute.waypoint_order in the response to
determine the new ordering.
*/
public var optimizeWaypoints : Bool;

/*
Location of destination. This can be specified as either a string to
be geocoded or a LatLng. Required.
*/
public var destination : Dynamic;

/*
If true, instructs the Directions service to avoids toll roads where
possible. Optional.
*/
public var avoidTolls : Bool;

/*
Location of origin. This can be specified as either a string to be
geocoded or a LatLng. Required.
*/
public var origin : Dynamic;

/*
Whether or not route alternatives should be provided. Optional.
*/
public var provideRouteAlternatives : Bool;

/*
If true, instructs the Directions service to avoids highways where
possible. Optional.
*/
public var avoidHighways : Bool;

/*
Preferred unit system to use when displaying distance.
Defaults to the unit system used in the country of origin.
*/
public var unitSystem : DirectionsUnitSystem;

/*
Array of intermediate waypoints. Directions will be calculated from
the origin to the destination by way of each waypoint in this array.
Optional.
*/
public var waypoints : Array<DirectionsWaypoint>;

/*
Type of routing requested. Required.
*/
public var travelMode : DirectionsTravelMode;


}
