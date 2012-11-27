/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:39 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlLookAt  extends KmlAbstractView{
/*
Sets the latitude, longitude, altitude, altitudeMode, heading, tilt, and range for the  camera.
*/
public static function set( latitude : Float, longitude : Float, altitude : Float, altitudeMode : KmlAltitudeModeEnum, heading : Float, tilt : Float, range : Float ) : Void;

/*
Latitude of the point the camera is looking at. Degrees north or south of the Equator (0 degrees). Values range from -90 degrees (South Pole) to 90 degrees (North Pole).
*/
public static function getLatitude() : Float;

/*
Latitude of the point the camera is looking at. Degrees north or south of the Equator (0 degrees). Values range from -90 degrees (South Pole) to 90 degrees (North Pole).
*/
public static function setLatitude( latitude : Float ) : Void;

/*
Longitude of the point the camera is looking at. Angular distance in degrees, relative to the Prime Meridian. Values west of the Meridian range from -180 to 0 degrees. Values east of the Meridian range from 0 to 180 degrees.
*/
public static function getLongitude() : Float;

/*
Longitude of the point the camera is looking at. Angular distance in degrees, relative to the Prime Meridian. Values west of the Meridian range from -180 to 0 degrees. Values east of the Meridian range from 0 to 180 degrees.
*/
public static function setLongitude( longitude : Float ) : Void;

/*
The distance in meters from the point specified by longitude, latitude, and altitude for the LookAt position.
*/
public static function getRange() : Float;

/*
The distance in meters from the point specified by longitude, latitude, and altitude for the LookAt position.
*/
public static function setRange( range : Float ) : Void;

/*
Angle between the direction of the LookAt position and the normal to the surface of the earth. Values range from 0 to 90 degrees. Values for tilt cannot be negative. A tilt value of 0 degrees indicates viewing from directly above. A tilt value of 90 degrees indicates viewing along the horizon.
*/
public static function getTilt() : Float;

/*
Angle between the direction of the LookAt position and the normal to the surface of the earth. Values range from 0 to 90 degrees. Values for tilt cannot be negative. A tilt value of 0 degrees indicates viewing from directly above. A tilt value of 90 degrees indicates viewing along the horizon.
*/
public static function setTilt( tilt : Float ) : Void;

/*
Direction (that is, North, South, East, West), in degrees. Default=0 (North). Values range from 0 to 360 degrees.
*/
public static function getHeading() : Float;

/*
Direction (that is, North, South, East, West), in degrees. Default=0 (North). Values range from 0 to 360 degrees.
*/
public static function setHeading( heading : Float ) : Void;

/*
Distance from the earth's surface, in meters.
*/
public static function getAltitude() : Float;

/*
Distance from the earth's surface, in meters.
*/
public static function setAltitude( altitude : Float ) : Void;

/*
Specifies how altitude components in the coordinates element are interpreted.
*/
public static function getAltitudeMode() : KmlAltitudeModeEnum;

/*
Specifies how altitude components in the coordinates element are interpreted.
*/
public static function setAltitudeMode( altitudeMode : KmlAltitudeModeEnum ) : Void;

}