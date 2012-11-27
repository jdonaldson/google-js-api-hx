/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

The status returned by the StreetViewService on
completion of a Street View request.

*/
package google.maps;
import js.Dom;

extern class StreetViewStatus {

/*
There are no nearby panoramas.
*/
public static var ZERO_RESULTS : Dynamic;

/*
The request was successful.
*/
public static var OK : Dynamic;

/*
The request could not be successfully processed, yet the exact
reason for failure is unknown.
*/
public static var UNKNOWN_ERROR : Dynamic;


}
