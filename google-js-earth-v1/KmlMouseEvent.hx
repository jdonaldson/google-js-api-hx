/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:38 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlMouseEvent  extends KmlEvent{
/*
The button on the mouse was pressed. Possible values include 0, 1, 2, where 0 is left, 1 is middle, and 2 is right mouse key.
*/
public function getButton() : Int;

/*
The x coordinate at which the event occurred, measured in pixels from the left edge of the plug-in window.
*/
public function getClientX() : Int;

/*
The y coordinate at which the event occurred, measured in pixels from the top edge of the plug-in window.
*/
public function getClientY() : Int;

/*
The x coordinate at which the event occurred, measured in pixels from the left edge of the computer screen.
*/
public function getScreenX() : Int;

/*
The y coordinate at which the event occurred, measured in pixels from the top edge of the computer screen.
*/
public function getScreenY() : Int;

/*
The latitude at which the event occurred, in decimal degrees.
*/
public function getLatitude() : Float;

/*
The longitude at which the event occurred, in decimal degrees.
*/
public function getLongitude() : Float;

/*
The altitude at which the event occurred, in meters.
*/
public function getAltitude() : Float;

/*
Indicates whether a mouse action occurred while on the Google Earth globe.
*/
public function getDidHitGlobe() : Bool;

/*
Indicates whether the ALT key was held down when an event occurred.
*/
public function getAltKey() : Bool;

/*
Indicates whether the CTRL key was held down when an event occurred.
*/
public function getCtrlKey() : Bool;

/*
Indicates whether the SHIFT key was held down when an event occurred.
*/
public function getShiftKey() : Bool;

/*
Used with the mouseover and mouseout events to specify a secondary target. For mouseover, it specifies the object that the mouse was over. For mouseout, it specifies the new object that the mouse is over.
*/
public function getRelatedTarget() : GEEventEmitter;

}