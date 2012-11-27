/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A single geocoder result in JSON format retrieved from the geocode
server. Note that a geocode may return multiple result objects.

*/
package google.maps;
import js.Dom;

extern class GeocoderResult {

/*
An array of GeocoderAddressComponents
*/
public var address_components : Array<GeocoderAddressComponent>;

/*
An array of strings denoting the type of the returned geocoded
element. A type consists of a unique string identifying the geocode
result. (For example, "administrative_area_level_1", "country", etc.)
*/
public var types : Array<String>;

/*
A GeocoderGeometry object
*/
public var geometry : GeocoderGeometry;


}
