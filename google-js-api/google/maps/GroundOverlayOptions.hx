/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

This object defines the properties that can be set on a
GroundOverlay object.

*/
package google.maps;
import js.Dom;

extern class GroundOverlayOptions {

/*
If true, the ground overlay can receive
click events.
*/
public var clickable : Bool;

/*
The map on which to display the overlay.
*/
public var map : Map;


}
