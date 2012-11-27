/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:39 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlLatLonBox  extends KmlObject{
/*
Sets the north, south, east, and west edges of the bounding box, as well as the rotation of the overlay.
*/
public function setBox( north : Float, south : Float, east : Float, west : Float, rotation : Float ) : Void;

/*
Specifies the latitude of the north edge of the bounding box, in decimal degrees from -90 to 90.
*/
public function getNorth() : Float;

/*
Specifies the latitude of the north edge of the bounding box, in decimal degrees from -90 to 90.
*/
public function setNorth( north : Float ) : Void;

/*
Specifies the latitude of the south edge of the bounding box, in decimal degrees from -90 to 90.
*/
public function getSouth() : Float;

/*
Specifies the latitude of the south edge of the bounding box, in decimal degrees from -90 to 90.
*/
public function setSouth( south : Float ) : Void;

/*
Specifies the longitude of the east edge of the bounding box, in decimal degrees from -180 to 180. (For overlays that overlap the meridian of 180 degrees longitude, values can extend beyond that range.)
*/
public function getEast() : Float;

/*
Specifies the longitude of the east edge of the bounding box, in decimal degrees from -180 to 180. (For overlays that overlap the meridian of 180 degrees longitude, values can extend beyond that range.)
*/
public function setEast( east : Float ) : Void;

/*
Specifies the longitude of the west edge of the bounding box, in decimal degrees from -180 to 180. (For overlays that overlap the meridian of 180 degrees longitude, values can extend beyond that range.)
*/
public function getWest() : Float;

/*
Specifies the longitude of the west edge of the bounding box, in decimal degrees from -180 to 180. (For overlays that overlap the meridian of 180 degrees longitude, values can extend beyond that range.)
*/
public function setWest( west : Float ) : Void;

/*
Specifies a rotation of the overlay about its center, in degrees. Values can be +/-180. The default is 0 (north). Rotations are specified in a counterclockwise direction.
*/
public function getRotation() : Float;

/*
Specifies a rotation of the overlay about its center, in degrees. Values can be +/-180. The default is 0 (north). Rotations are specified in a counterclockwise direction.
*/
public function setRotation( rotation : Float ) : Void;

}