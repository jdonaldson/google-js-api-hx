/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A service for computing directions between two or more places.

*/
package google.maps;
import js.Dom;

extern class DirectionsService {

/*
Creates a new instance of a DirectionsService that sends
directions queries to Google servers.

*/
public function new() : Void;

/*
Issue a directions search request.
*/
public function route(request:DirectionsRequest, _callback:DirectionsResult-> DirectionsStatus->Void) : Void;


}
