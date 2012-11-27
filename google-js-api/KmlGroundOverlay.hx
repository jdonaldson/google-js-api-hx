/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:37 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlGroundOverlay  extends KmlOverlay{
/*
Specifies the distance above the earth's surface.
*/
public static function getAltitude() : Float;

/*
Specifies the distance above the earth's surface.
*/
public static function setAltitude( altitude : Float ) : Void;

/*
Specifies how the altitude property is interpreted.
See also:GEPlugin.ALTITUDE_CLAMP_TO_GROUND 
GEPlugin.ALTITUDE_ABSOLUTE 
GEPlugin.ALTITUDE_CLAMP_TO_SEA_FLOOR
*/
public static function getAltitudeMode() : KmlAltitudeModeEnum;

/*
Specifies how the altitude property is interpreted.
See also:GEPlugin.ALTITUDE_CLAMP_TO_GROUND 
GEPlugin.ALTITUDE_ABSOLUTE 
GEPlugin.ALTITUDE_CLAMP_TO_SEA_FLOOR
*/
public static function setAltitudeMode( altitudeMode : KmlAltitudeModeEnum ) : Void;

/*
The bounding box of the ground overlay.
*/
public static function getLatLonBox() : KmlLatLonBox;

/*
The bounding box of the ground overlay.
*/
public static function setLatLonBox( latLonBox : KmlLatLonBox ) : Void;

}