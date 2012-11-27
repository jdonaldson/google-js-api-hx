/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:40 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlExtrudableGeometry  extends KmlAltitudeGeometry{
/*
Specifies whether to connect the geometry to the ground.
*/
public function getExtrude() : Bool;

/*
Specifies whether to connect the geometry to the ground.
*/
public function setExtrude( extrude : Bool ) : Void;

/*
Specifies whether to allow the geometry to follow the terrain elevation.
*/
public function getTessellate() : Bool;

/*
Specifies whether to allow the geometry to follow the terrain elevation.
*/
public function setTessellate( tessellate : Bool ) : Void;

}