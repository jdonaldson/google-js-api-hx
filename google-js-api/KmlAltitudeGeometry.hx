/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:35 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlAltitudeGeometry  extends KmlGeometry{
/*
Specifies how altitude components in the geometry coordinates are interpreted.
*/
public static function getAltitudeMode() : KmlAltitudeModeEnum;

/*
Specifies how altitude components in the geometry coordinates are interpreted.
*/
public static function setAltitudeMode( altitudeMode : KmlAltitudeModeEnum ) : Void;

}