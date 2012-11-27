/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:31 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEHitTestResult {
/*
Latitude of sampled point.
*/
public static function getLatitude() : Float;

/*
Latitude of sampled point.
*/
public static function setLatitude( latitude : Float ) : Void;

/*
Longitude of sampled point.
*/
public static function getLongitude() : Float;

/*
Longitude of sampled point.
*/
public static function setLongitude( longitude : Float ) : Void;

/*
Altitude of sampled point.
*/
public static function getAltitude() : Float;

/*
Altitude of sampled point.
*/
public static function setAltitude( altitude : Float ) : Void;

}