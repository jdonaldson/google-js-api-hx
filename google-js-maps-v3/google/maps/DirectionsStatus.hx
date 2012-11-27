/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

The status returned by the DirectionsService on the
completion of a call to route().

*/
package google.maps;
import js.Dom;

extern class DirectionsStatus {

/*
At least one of the origin, destination, or waypoints could not be
geocoded.
*/
public static var NOT_FOUND : Dynamic;

/*
No route could be found between the origin and destination.
*/
public static var ZERO_RESULTS : Dynamic;

/*
The webpage is not allowed to use the directions service.
*/
public static var REQUEST_DENIED : Dynamic;

/*
Too many DirectionsWaypoints were provided in the
DirectionsRequest.  The total allowed waypoints is 8, plus
the origin and destination.
*/
public static var MAX_WAYPOINTS_EXCEEDED : Dynamic;

/*
The response contains a valid DirectionsResult.
*/
public static var OK : Dynamic;

/*
The webpage has gone over the requests limit in too short a period
of time.
*/
public static var OVER_QUERY_LIMIT : Dynamic;

/*
The DirectionsRequest provided was invalid.
*/
public static var INVALID_REQUEST : Dynamic;

/*
A directions request could not be processed due to a server error.
The request may succeed if you try again.
*/
public static var UNKNOWN_ERROR : Dynamic;


}
