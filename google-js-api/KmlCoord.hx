/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:42 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlCoord  extends KmlObjectBase{
/*
Sets the latitude, longitude, altitude.
*/
public static function setLatLngAlt( latitude : Float, longitude : Float, altitude : Float ) : Void;

/*
Degrees north or south of the Equator (0 degrees). Values range from -90 degrees (South Pole) to 90 degrees (North Pole).
*/
public static function getLatitude() : Float;

/*
Degrees north or south of the Equator (0 degrees). Values range from -90 degrees (South Pole) to 90 degrees (North Pole).
*/
public static function setLatitude( latitude : Float ) : Void;

/*
Angular distance in degrees, relative to the Prime Meridian. Values west of the Meridian range from -180 to 0 degrees. Values east of the Meridian range from 0 to 180 degrees.
*/
public static function getLongitude() : Float;

/*
Angular distance in degrees, relative to the Prime Meridian. Values west of the Meridian range from -180 to 0 degrees. Values east of the Meridian range from 0 to 180 degrees.
*/
public static function setLongitude( longitude : Float ) : Void;

/*
Distance from the earth's surface.
*/
public static function getAltitude() : Float;

/*
Distance from the earth's surface.
*/
public static function setAltitude( altitude : Float ) : Void;

}