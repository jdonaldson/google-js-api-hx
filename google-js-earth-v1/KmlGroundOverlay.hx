/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:37 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlGroundOverlay  extends KmlOverlay{
/*
Specifies the distance above the earth's surface.
*/
public function getAltitude() : Float;

/*
Specifies the distance above the earth's surface.
*/
public function setAltitude( altitude : Float ) : Void;

/*
Specifies how the altitude property is interpreted.
See also:GEPlugin.ALTITUDE_CLAMP_TO_GROUND 
GEPlugin.ALTITUDE_ABSOLUTE 
GEPlugin.ALTITUDE_CLAMP_TO_SEA_FLOOR
*/
public function getAltitudeMode() : KmlAltitudeModeEnum;

/*
Specifies how the altitude property is interpreted.
See also:GEPlugin.ALTITUDE_CLAMP_TO_GROUND 
GEPlugin.ALTITUDE_ABSOLUTE 
GEPlugin.ALTITUDE_CLAMP_TO_SEA_FLOOR
*/
public function setAltitudeMode( altitudeMode : KmlAltitudeModeEnum ) : Void;

/*
The bounding box of the ground overlay.
*/
public function getLatLonBox() : KmlLatLonBox;

/*
The bounding box of the ground overlay.
*/
public function setLatLonBox( latLonBox : KmlLatLonBox ) : Void;

}