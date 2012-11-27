/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

An elevation request sent by the ElevationService
containing the list of discrete coordinates (LatLngs)
for which to return elevation data.


*/
package google.maps;
import js.Dom;

extern class LocationElevationRequest {

/*
The discrete locations for which to retrieve elevations.
*/
public var locations : Array<LatLng>;


}
