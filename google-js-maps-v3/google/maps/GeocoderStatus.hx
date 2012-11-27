/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

The status returned by the Geocoder on the completion of
a call to geocode().

*/
package google.maps;
import js.Dom;

extern class GeocoderStatus {

/*
No result was found for this GeocoderRequest.
*/
public static var ZERO_RESULTS : Dynamic;

/*
The webpage is not allowed to use the geocoder.
*/
public static var REQUEST_DENIED : Dynamic;

/*
The response contains a valid GeocoderResponse.
*/
public static var OK : Dynamic;

/*
The webpage has gone over the requests limit in too short a period
of time.
*/
public static var OVER_QUERY_LIMIT : Dynamic;

/*
This GeocoderRequest was invalid.
*/
public static var INVALID_REQUEST : Dynamic;

/*
A geocoding request could not be processed due to a server error.
The request may succeed if you try again.
*/
public static var UNKNOWN_ERROR : Dynamic;

/*
There was a problem contacting the Google servers.
*/
public static var ERROR : Dynamic;


}
