/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:38 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlScale  extends KmlObject{
/*
Sets the x, y, and z coordinates for a model.
*/
public function set( x : Float, y : Float, z : Float ) : Void;

/*
Indicates the x coordinate.
*/
public function getX() : Float;

/*
Indicates the x coordinate.
*/
public function setX( x : Float ) : Void;

/*
Indicates the y coordinate.
*/
public function getY() : Float;

/*
Indicates the y coordinate.
*/
public function setY( y : Float ) : Void;

/*
Indicates the z coordinate.
*/
public function getZ() : Float;

/*
Indicates the z coordinate.
*/
public function setZ( z : Float ) : Void;

}