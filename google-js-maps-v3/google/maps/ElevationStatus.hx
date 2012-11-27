/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

The status returned by the ElevationService upon
completion of an elevation requerst.

*/
package google.maps;
import js.Dom;

extern class ElevationStatus {

/*
The webpage is not allowed to use the elevation service for some
reason.
*/
public static var REQUEST_DENIED : Dynamic;

/*
The request did not encounter any errors.
*/
public static var OK : Dynamic;

/*
The webpage has gone over the requests limit in too short a period
of time.
*/
public static var OVER_QUERY_LIMIT : Dynamic;

/*
This request was invalid.
*/
public static var INVALID_REQUEST : Dynamic;

/*
A geocoding, directions or elevation request could not be
successfully processed, yet the exact reason for the failure is not known.
*/
public static var UNKNOWN_ERROR : Dynamic;


}
