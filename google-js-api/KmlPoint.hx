/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:37 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlPoint  extends KmlExtrudableGeometry{
/*
Sets altitudeMode, extrude, tessellate, latitude, longitude, and altitude values.
*/
public static function set( latitude : Float, longitude : Float, altitude : Float, altitudeMode : KmlAltitudeModeEnum, extrude : Bool, tessellate : Bool ) : Void;

/*
Sets the latitude and longitude.
*/
public static function setLatLng( latitude : Float, longitude : Float ) : Void;

/*
Sets the latitude, longitude, and altitide.
*/
public static function setLatLngAlt( latitude : Float, longitude : Float, altitude : Float ) : Void;

/*
The point's latitude, in degrees.
*/
public static function getLatitude() : Float;

/*
The point's latitude, in degrees.
*/
public static function setLatitude( latitude : Float ) : Void;

/*
The point's longitude, in degrees.
*/
public static function getLongitude() : Float;

/*
The point's longitude, in degrees.
*/
public static function setLongitude( longitude : Float ) : Void;

/*
The point's altitude, in meters.
*/
public static function getAltitude() : Float;

/*
The point's altitude, in meters.
*/
public static function setAltitude( altitude : Float ) : Void;

}