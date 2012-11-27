/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:47 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlExtrudableGeometry  extends KmlAltitudeGeometry{
/*
Specifies whether to connect the geometry to the ground.
*/
public static function getExtrude() : Bool;

/*
Specifies whether to connect the geometry to the ground.
*/
public static function setExtrude( extrude : Bool ) : Void;

/*
Specifies whether to allow the geometry to follow the terrain elevation.
*/
public static function getTessellate() : Bool;

/*
Specifies whether to allow the geometry to follow the terrain elevation.
*/
public static function setTessellate( tessellate : Bool ) : Void;

}