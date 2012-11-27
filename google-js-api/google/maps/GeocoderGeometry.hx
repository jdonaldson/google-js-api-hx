/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

Geometry information about this GeocoderResult

*/
package google.maps;
import js.Dom;

extern class GeocoderGeometry {

/*
The latitude/longitude coordinates of this result
*/
public var location : LatLng;

/*
The precise bounds of this GeocodeResult,
if applicable
*/
public var bounds : LatLngBounds;

/*
The type of location returned in location
*/
public var location_type : GeocoderLocationType;

/*
The bounds of the recommended viewport for displaying this
GeocodeResult
*/
public var viewport : LatLngBounds;


}
