/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

An overlay that looks like a bubble and is often
connected to a marker.  This class extends MVCObject.

This class produces the following events:
Event Name : Arguments - Description
======================================
zindex_changed : Void - This event is fired when the InfoWindow's zIndex changes.
domready : Void - This event is fired when the <div>
containing the InfoWindow's content
is attached to the DOM. You may wish to monitor this event if you are
building out your info window content dynamically.
content_changed : Void - This event is fired when the content property changes.
closeclick : Void - This event is fired when the close button was clicked.
position_changed : Void - This event is fired when the position property changes.
*/
package google.maps;
import js.Dom;

extern class InfoWindow extends MVCObject{

/*
Creates an info window with the given options.  An InfoWindow can be
placed on a map at a particular position or above a marker, depending on
what is specified in the options. Unless auto-pan is disabled, an
InfoWindow will pan the map to make itself visible when it is opened.
After constructing an InfoWindow, you must call open to display it on the
map.  The user can  click the close button on the InfoWindow to remove it
from the map, or the developer can call close() for the same effect.

*/
public function new(?opts:InfoWindowOptions) : Void;

/*

*/
public function setOptions(options:InfoWindowOptions) : Void;

/*

*/
public function getPosition() : LatLng;

/*

*/
public function setZIndex(zIndex:Float) : Void;

/*
Opens this InfoWindow on the given map.  Optionally, an InfoWindow can be
associated with an anchor.  In the core API, the only anchor is the Marker
class.  However, an anchor can be any MVCObject that exposes the position
property and optionally pixelBounds for calculating the pixelOffset (see
InfoWindowOptions).
*/
public function open(map:Dynamic, ?anchor:MVCObject) : Void;

/*

*/
public function getContent() : Dynamic;

/*

*/
public function setContent(content:Dynamic) : Void;

/*
Closes this InfoWindow by removing it from the DOM structure.
*/
public function close() : Void;

/*

*/
public function setPosition(position:LatLng) : Void;

/*

*/
public function getZIndex() : Float;


}
