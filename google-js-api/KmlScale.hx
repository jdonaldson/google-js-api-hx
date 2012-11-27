/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:42 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlScale  extends KmlObject{
/*
Sets the x, y, and z coordinates for a model.
*/
public static function set( x : Float, y : Float, z : Float ) : Void;

/*
Indicates the x coordinate.
*/
public static function getX() : Float;

/*
Indicates the x coordinate.
*/
public static function setX( x : Float ) : Void;

/*
Indicates the y coordinate.
*/
public static function getY() : Float;

/*
Indicates the y coordinate.
*/
public static function setY( y : Float ) : Void;

/*
Indicates the z coordinate.
*/
public static function getZ() : Float;

/*
Indicates the z coordinate.
*/
public static function setZ( z : Float ) : Void;

}