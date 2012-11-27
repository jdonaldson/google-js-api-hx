/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:41 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlMouseEvent  extends KmlEvent{
/*
The button on the mouse was pressed. Possible values include 0, 1, 2, where 0 is left, 1 is middle, and 2 is right mouse key.
*/
public static function getButton() : Int;

/*
The x coordinate at which the event occurred, measured in pixels from the left edge of the plug-in window.
*/
public static function getClientX() : Int;

/*
The y coordinate at which the event occurred, measured in pixels from the top edge of the plug-in window.
*/
public static function getClientY() : Int;

/*
The x coordinate at which the event occurred, measured in pixels from the left edge of the computer screen.
*/
public static function getScreenX() : Int;

/*
The y coordinate at which the event occurred, measured in pixels from the top edge of the computer screen.
*/
public static function getScreenY() : Int;

/*
The latitude at which the event occurred, in decimal degrees.
*/
public static function getLatitude() : Float;

/*
The longitude at which the event occurred, in decimal degrees.
*/
public static function getLongitude() : Float;

/*
The altitude at which the event occurred, in meters.
*/
public static function getAltitude() : Float;

/*
Indicates whether a mouse action occurred while on the Google Earth globe.
*/
public static function getDidHitGlobe() : Bool;

/*
Indicates whether the ALT key was held down when an event occurred.
*/
public static function getAltKey() : Bool;

/*
Indicates whether the CTRL key was held down when an event occurred.
*/
public static function getCtrlKey() : Bool;

/*
Indicates whether the SHIFT key was held down when an event occurred.
*/
public static function getShiftKey() : Bool;

/*
Used with the mouseover and mouseout events to specify a secondary target. For mouseover, it specifies the object that the mouse was over. For mouseout, it specifies the new object that the mouse is over.
*/
public static function getRelatedTarget() : GEEventEmitter;

}