/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A rectangular image overlay on the map.  This class extends MVCObject.

This class produces the following events:
Event Name : Arguments - Description
======================================
click : MouseEvent - This event is fired when the DOM click event is fired on the
GroundOverlay.
*/
package google.maps;
import js.Dom;

extern class GroundOverlay extends MVCObject{

/*
Creates a ground overlay from the provided image URL and its
LatLngBounds. The image is scaled to fit the current bounds,
and projected using the current map projection.
*/
public function new(url:String, bounds:LatLngBounds, ?opts:GroundOverlayOptions) : Void;

/*
Gets the LatLngBounds of this overlay.
*/
public function getBounds() : LatLngBounds;

/*
Renders the ground overlay on the specified map. If map is set to null, the
overlay is removed.
*/
public function setMap(map:Map) : Void;

/*
Gets the url of the projected image.
*/
public function getUrl() : String;

/*
Returns the map on which this ground overlay is displayed.
*/
public function getMap() : Map;


}
