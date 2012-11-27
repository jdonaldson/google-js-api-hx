/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

The directions response in JSON format retrieved from the directions
server. You can render these using a
DirectionsRenderer or parse
this object and render it yourself.  You must display the warnings and
copyrights as noted in the
Maps API terms of service.

*/
package google.maps;
import js.Dom;

extern class DirectionsResult {

/*
An array of DirectionsRoutes, each of which contains
information about the legs and steps of which it is composed.  There will
only be one route unless the DirectionsRequest was made with
provideRouteAlternatives set to true. (This
property was formerly known as "trips".)
*/
public var routes : Array<DirectionsRoute>;


}
