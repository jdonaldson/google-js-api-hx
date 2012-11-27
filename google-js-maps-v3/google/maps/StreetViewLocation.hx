/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A representation of a location in the Street View panorama.

*/
package google.maps;
import js.Dom;

extern class StreetViewLocation {

/*
The latlng of the panorama.
*/
public var latLng : LatLng;

/*
A localized string describing the location.
*/
public var description : String;

/*
A unique identifier for the panorama. This is stable within a session
      but unstable across sessions.
*/
public var pano : String;


}
