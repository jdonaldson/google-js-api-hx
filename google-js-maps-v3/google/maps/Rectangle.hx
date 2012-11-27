/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A rectangle overlay.  This class extends MVCObject.

This class produces the following events:
Event Name : Arguments - Description
======================================
mousemove : MouseEvent - This event is fired when the DOM mousemove event is fired on the
Rectangle.
rightclick : MouseEvent - This event is fired when the Rectangle is right-clicked on.
mouseup : MouseEvent - This event is fired when the DOM mouseup event is fired on the
Rectangle.
mouseout : MouseEvent - This event is fired on Rectangle mouseout.
dblclick : MouseEvent - This event is fired when the DOM dblclick event is fired on the
Rectangle.
mouseover : MouseEvent - This event is fired on Rectangle mouseover.
click : MouseEvent - This event is fired when the DOM click event is fired on the
Rectangle.
mousedown : MouseEvent - This event is fired when the DOM mousedown event is fired on the
Rectangle.
*/
package google.maps;
import js.Dom;

extern class Rectangle extends MVCObject{

/*
Create a rectangle using the passed
RectangleOptions, which
specify the bounds and style.
*/
public function new(?opts:RectangleOptions) : Void;

/*
Returns the bounds of this rectangle.
*/
public function getBounds() : LatLngBounds;

/*
Renders the rectangle on the specified map.  If map is set to null, the
rectangle will be removed.
*/
public function setMap(map:Map) : Void;

/*
Sets the bounds of this rectangle.
*/
public function setBounds(bounds:LatLngBounds) : Void;

/*

*/
public function setOptions(options:RectangleOptions) : Void;

/*
Returns the map on which this rectangle is displayed.
*/
public function getMap() : Map;


}
