/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A circle on the Earth's surface; also known as a "spherical cap".  This class extends MVCObject.

This class produces the following events:
Event Name : Arguments - Description
======================================
mousemove : MouseEvent - This event is fired when the DOM mousemove event is fired on the
Circle.
rightclick : MouseEvent - This event is fired when the Circle is right-clicked on.
mouseup : MouseEvent - This event is fired when the DOM mouseup event is fired on the Circle.
mouseout : MouseEvent - This event is fired on Circle mouseout.
dblclick : MouseEvent - This event is fired when the DOM dblclick event is fired on the
Circle.
mouseover : MouseEvent - This event is fired on Circle mouseover.
click : MouseEvent - This event is fired when the DOM click event is fired on the Circle.
mousedown : MouseEvent - This event is fired when the DOM mousedown event is fired on the
Circle.
*/
package google.maps;
import js.Dom;

extern class Circle extends MVCObject{

/*
Create a circle using the passed
CircleOptions, which
specify the center, radius, and style.
*/
public function new(?opts:CircleOptions) : Void;

/*
Returns the radius of this circle (in meters).
*/
public function getRadius() : Float;

/*
Sets the radius of this circle (in meters).
*/
public function setRadius(radius:Float) : Void;

/*
Gets the LatLngBounds of this Circle.
*/
public function getBounds() : LatLngBounds;

/*

*/
public function setOptions(options:CircleOptions) : Void;

/*
Renders the circle on the specified map.  If map is set to null, the circle
will be removed.
*/
public function setMap(map:Map) : Void;

/*
Returns the center of this circle.
*/
public function getCenter() : LatLng;

/*
Sets the center of this circle.
*/
public function setCenter(center:LatLng) : Void;

/*
Returns the map on which this circle is displayed.
*/
public function getMap() : Map;


}
