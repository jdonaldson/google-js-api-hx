/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A StreetViewService object performs searches for Street
View data.

*/
package google.maps;
import js.Dom;

extern class StreetViewService {

/*
Retrieves the data for the given pano id and passes it to the provided
callback as a StreetViewPanoramaData object.  Pano ids are
unique per panorama and stable for the lifetime of a session, but are liable
to change between sessions.
*/
public function getPanoramaById(pano:String, _callback:StreetViewPanoramaData-> StreetViewStatus->Void) : Void;

/*
Retrieves the StreetViewPanoramaData for a panorama within a
given radius of the given LatLng.  The
StreetViewPanoramaData is passed to the provided callback.
If the radius is less than 50 meters, the nearest panorama will be returned.
*/
public function getPanoramaByLocation(latlng:LatLng, radius:Float, _callback:StreetViewPanoramaData-> StreetViewStatus->Void) : Void;


}
