/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

The specification for a geocoding request to be sent to the
Geocoder.


*/
package google.maps;
import js.Dom;

extern class GeocoderRequest {

/*
Country code top-level domain within which to search.  Optional.
*/
public var region : String;

/*
Address. Optional.
*/
public var address : String;

/*
LatLng about which to search.  Optional.
*/
public var location : LatLng;

/*
LatLngBounds within which to search.  Optional.
*/
public var bounds : LatLngBounds;

/*
Preferred language for results.  Optional.
*/
public var language : String;


}
