/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:38 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlLatLonAltBox  extends KmlLatLonBox{
/*
Sets the north, south, east, west, rotation, minAltitude, maxAltitude, and altitudeMode of bounding box.
*/
public function setAltBox( north : Float, south : Float, east : Float, west : Float, rotation : Float, minAltitude : Float, maxAltitude : Float, altitudeMode : KmlAltitudeModeEnum ) : Void;

/*
Minimum altitude, specified in meters above sea level.
*/
public function getMinAltitude() : Float;

/*
Minimum altitude, specified in meters above sea level.
*/
public function setMinAltitude( minAltitude : Float ) : Void;

/*
Maximim altitude, specified in meters above sea level.
*/
public function getMaxAltitude() : Float;

/*
Maximim altitude, specified in meters above sea level.
*/
public function setMaxAltitude( maxAltitude : Float ) : Void;

/*
Specifies how the altitude property is interpreted.
See also:GEPlugin.ALTITUDE_CLAMP_TO_GROUND 
GEPlugin.ALTITUDE_RELATIVE_TO_GROUND 
GEPlugin.ALTITUDE_ABSOLUTE 
GEPlugin.ALTITUDE_CLAMP_TO_SEA_FLOOR 
GEPlugin.ALTITUDE_RELATIVE_TO_SEA_FLOOR
*/
public function getAltitudeMode() : KmlAltitudeModeEnum;

/*
Specifies how the altitude property is interpreted.
See also:GEPlugin.ALTITUDE_CLAMP_TO_GROUND 
GEPlugin.ALTITUDE_RELATIVE_TO_GROUND 
GEPlugin.ALTITUDE_ABSOLUTE 
GEPlugin.ALTITUDE_CLAMP_TO_SEA_FLOOR 
GEPlugin.ALTITUDE_RELATIVE_TO_SEA_FLOOR
*/
public function setAltitudeMode( altitudeMode : KmlAltitudeModeEnum ) : Void;

}