/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A service for converting between an address and a
LatLng.

*/
package google.maps;
import js.Dom;

extern class Geocoder {

/*
Creates a new instance of a Geocoder that sends geocode
requests to Google servers.

*/
public function new() : Void;

/*
Geocode a request.
*/
public function geocode(request:GeocoderRequest, _callback:Array<GeocoderResult>-> GeocoderStatus->Void) : Void;


}
