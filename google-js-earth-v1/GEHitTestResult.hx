/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:35 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEHitTestResult {
/*
Latitude of sampled point.
*/
public function getLatitude() : Float;

/*
Latitude of sampled point.
*/
public function setLatitude( latitude : Float ) : Void;

/*
Longitude of sampled point.
*/
public function getLongitude() : Float;

/*
Longitude of sampled point.
*/
public function setLongitude( longitude : Float ) : Void;

/*
Altitude of sampled point.
*/
public function getAltitude() : Float;

/*
Altitude of sampled point.
*/
public function setAltitude( altitude : Float ) : Void;

}