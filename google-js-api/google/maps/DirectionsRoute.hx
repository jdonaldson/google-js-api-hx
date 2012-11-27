/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A single route containing a set of legs in JSON format in a
DirectionsResult. (This object
was formerly known as "DirectionsTrip".)

*/
package google.maps;
import js.Dom;

extern class DirectionsRoute {

/*
The bounds for this route.
*/
public var bounds : LatLngBounds;

/*
Warnings to be displayed when showing these directions.
*/
public var warnings : Array<String>;

/*
Copyrights text to be displayed for this route.
*/
public var copyrights : String;

/*
An array of LatLngs representing the entire course of
this route. The path is simplified in order to make it suitable in contexts
where a small number of vertices is required (such as Static Maps API URLs).
*/
public var overview_path : Array<LatLng>;

/*
If optimizeWaypoints was set to true, this
field will contain the re-ordered permutation of the input waypoints. For
example, if the input was:
  Origin: Los Angeles
  Waypoints: Dallas, Bangor, Phoenix
  Destination: New York
and the optimized output was ordered as follows:
  Origin: Los Angeles
  Waypoints: Phoenix, Dallas, Bangor
  Destination: New York
then this field will be an Array containing the values
[2, 0, 1].  Note that the numbering of waypoints is zero-based.
If any of the input waypoints has stopover set to
false, this field will be empty, since route optimization is not
available for such queries.
*/
public var waypoint_order : Array<Float>;

/*
An array of DirectionsLegs, each of which contains
information about the steps of which it is composed.  There will
be one leg for each waypoint or destination specified.  So a route with no
waypoints will contain one DirectionsLeg and a route with one
waypoint will contain two. (This property was formerly known as "routes".)
*/
public var legs : Array<DirectionsLeg>;


}
