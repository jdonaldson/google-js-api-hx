/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

  This class extends MVCObject.

This class produces the following events:
Event Name : Arguments - Description
======================================
shape_changed : Void - This event is fired when the marker's shape property changes.
drag : MouseEvent - This event is repeatedly fired while the user drags the marker.
shadow_changed : Void - This event is fired when the marker's shadow property changes.
rightclick : Event - This event is fired when the marker is right clicked on.
zindex_changed : Void - This event is fired when the marker's zIndex property changes.
mouseup : Event - This event is fired for the DOM mouseup on the marker.
mouseout : Event - This event is fired when the mouse leaves the area of the marker icon.
draggable_changed : Void - This event is fired when the marker's draggable property changes.
dblclick : Event - This event is fired when the marker icon was double clicked.
cursor_changed : Void - This event is fired when the marker's cursor property changes.
mouseover : Event - This event is fired when the mouse enters the area of the marker icon.
flat_changed : Void - This event is fired when the marker's flat property changes.
clickable_changed : Void - This event is fired when the marker's clickable property changes.
title_changed : Void - This event is fired when the marker title property changes.
visible_changed : Void - This event is fired when the marker's visible property changes.
icon_changed : Void - This event is fired when the marker icon property changes.
dragstart : MouseEvent - This event is fired when the user starts dragging the marker.
dragend : MouseEvent - This event is fired when the user stops dragging the marker.
position_changed : Void - This event is fired when the marker position property changes.
click : Event - This event is fired when the marker icon was clicked.
mousedown : Event - This event is fired when the DOM mousedown event is fired on the
marker icon.
*/
package google.maps;
import js.Dom;

extern class Marker extends MVCObject{

/*
Creates a marker with the options specified.
If a map is specified, the marker is added to the map upon construction.
Note that the position must be set for the marker to display.

*/
public function new(?opts:MarkerOptions) : Void;

/*

*/
public function setShadow(shadow:Dynamic) : Void;

/*

*/
public function getTitle() : String;

/*

*/
public function getShadow() : Dynamic;

/*
Renders the marker on the specified map or panorama.  If map is set to null,
the marker will be removed.
*/
public function setMap(map:Dynamic) : Void;

/*

*/
public function setFlat(flag:Bool) : Void;

/*

*/
public function getPosition() : LatLng;

/*

*/
public function getCursor() : String;

/*

*/
public function setZIndex(zIndex:Float) : Void;

/*

*/
public function getShape() : MarkerShape;

/*

*/
public function getClickable() : Bool;

/*

*/
public function setVisible(visible:Bool) : Void;

/*

*/
public function setPosition(latlng:LatLng) : Void;

/*

*/
public function setShape(shape:MarkerShape) : Void;

/*

*/
public function setOptions(options:MarkerOptions) : Void;

/*

*/
public function setCursor(cursor:String) : Void;

/*

*/
public function getDraggable() : Bool;

/*

*/
public function setDraggable(flag:Bool) : Void;

/*

*/
public function getVisible() : Bool;

/*

*/
public function getIcon() : Dynamic;

/*

*/
public function setTitle(title:String) : Void;

/*

*/
public function getZIndex() : Float;

/*

*/
public function setIcon(icon:Dynamic) : Void;

/*

*/
public function setClickable(flag:Bool) : Void;

/*

*/
public function getMap() : Dynamic;

/*

*/
public function getFlat() : Bool;


}
