/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:37 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlLocation  extends KmlObject{
/*
Sets the latitude, longitude, and altitude of the Model.
*/
public function setLatLngAlt( lat : Float, lng : Float, alt : Float ) : Void;

/*
Longitude of the Model's location. Angular distance in degrees, relative to the Prime Meridian. Values west of the Meridian range from -180 to 0 degrees. Values east of the Meridian range from 0 to 180 degrees.
*/
public function getLongitude() : Float;

/*
Longitude of the Model's location. Angular distance in degrees, relative to the Prime Meridian. Values west of the Meridian range from -180 to 0 degrees. Values east of the Meridian range from 0 to 180 degrees.
*/
public function setLongitude( longitude : Float ) : Void;

/*
Latitude of the camera location. Degrees north or south of the Equator (0 degrees). Values range from -90 degrees (South Pole) to 90 degrees (North Pole).
*/
public function getLatitude() : Float;

/*
Latitude of the camera location. Degrees north or south of the Equator (0 degrees). Values range from -90 degrees (South Pole) to 90 degrees (North Pole).
*/
public function setLatitude( latitude : Float ) : Void;

/*
Specifies the distance above the earth's surface.
*/
public function getAltitude() : Float;

/*
Specifies the distance above the earth's surface.
*/
public function setAltitude( altitude : Float ) : Void;

}