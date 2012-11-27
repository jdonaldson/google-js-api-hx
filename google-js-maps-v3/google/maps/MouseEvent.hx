/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

This object is returned from various mouse events on the map
and overlays, and contains all the fields shown below.

*/
package google.maps;
import js.Dom;

extern class MouseEvent {

/*
The latitude/longitude that was below the cursor
when the event occurred.
*/
public var latLng : LatLng;


}
