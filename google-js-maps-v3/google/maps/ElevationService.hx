/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

Defines a service class that talks directly to Google servers
for requesting elevation data.


*/
package google.maps;
import js.Dom;

extern class ElevationService {

/*
Creates a new instance of a ElevationService that sends
elevation queries to Google servers.
*/
public function new() : Void;

/*
Makes an elevation request for a list of discrete locations.
*/
public function getElevationForLocations(request:LocationElevationRequest, _callback:Array<ElevationResult>->ElevationStatus->Void) : Void;

/*
Makes an elevation request along a path, where the elevation data
are returned as distance-based samples along that path.
*/
public function getElevationAlongPath(request:PathElevationRequest, _callback:Array<ElevationResult>->ElevationStatus->Void) : Void;


}
