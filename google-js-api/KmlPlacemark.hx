/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:36 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlPlacemark  extends KmlFeature{
/*
The geometry associated with the placemark.
*/
public static function getGeometry() : KmlGeometry;

/*
The geometry associated with the placemark.
*/
public static function setGeometry( geometry : KmlGeometry ) : Void;

}