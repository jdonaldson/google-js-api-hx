/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:37 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlCamera  extends KmlAbstractView{
/*
Sets the latitude, longitude, altitude, alitudeMode, heading, tilt, and roll values.
*/
public function set( latitude : Float, longitude : Float, altitude : Float, altitudeMode : KmlAltitudeModeEnum, heading : Float, tilt : Float, roll : Float ) : Void;

/*
Latitude of the camera location. Degrees north or south of the Equator (0 degrees). Values range from -90 degrees to 90 degrees.
*/
public function getLatitude() : Float;

/*
Latitude of the camera location. Degrees north or south of the Equator (0 degrees). Values range from -90 degrees to 90 degrees.
*/
public function setLatitude( latitude : Float ) : Void;

/*
Longitude of the camera location. Angular distance in degrees, relative to the Prime Meridian. Values west of the Meridian range from -180 to 0 degrees. Values east of the Meridian range from 0 to 180 degrees.
*/
public function getLongitude() : Float;

/*
Longitude of the camera location. Angular distance in degrees, relative to the Prime Meridian. Values west of the Meridian range from -180 to 0 degrees. Values east of the Meridian range from 0 to 180 degrees.
*/
public function setLongitude( longitude : Float ) : Void;

/*
Distance from the earth's surface.
*/
public function getAltitude() : Float;

/*
Distance from the earth's surface.
*/
public function setAltitude( altitude : Float ) : Void;

/*
Direction (that is, North, South, East, West), in degrees. Default=0 (North). Values range from 0 to 360 degrees.
*/
public function getHeading() : Float;

/*
Direction (that is, North, South, East, West), in degrees. Default=0 (North). Values range from 0 to 360 degrees.
*/
public function setHeading( heading : Float ) : Void;

/*
Angle between the direction of the camera position and the normal to the surface of the earth. Values range from 0 to 360 degrees. A tilt value of 0 degrees indicates viewing from directly above, 90 degrees indicates viewing along the horizon, and 180 degrees indicates viewing straight up at the sky.
*/
public function getTilt() : Float;

/*
Angle between the direction of the camera position and the normal to the surface of the earth. Values range from 0 to 360 degrees. A tilt value of 0 degrees indicates viewing from directly above, 90 degrees indicates viewing along the horizon, and 180 degrees indicates viewing straight up at the sky.
*/
public function setTilt( tilt : Float ) : Void;

/*
Rotation, in degrees, of the camera around the Z axis. Values range from -180 to +180 degrees.
*/
public function getRoll() : Float;

/*
Rotation, in degrees, of the camera around the Z axis. Values range from -180 to +180 degrees.
*/
public function setRoll( roll : Float ) : Void;

/*
Specifies how altitude components in the coordinates are interpreted.
*/
public function getAltitudeMode() : KmlAltitudeModeEnum;

/*
Specifies how altitude components in the coordinates are interpreted.
*/
public function setAltitudeMode( altitudeMode : KmlAltitudeModeEnum ) : Void;

}