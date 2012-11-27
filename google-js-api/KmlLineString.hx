/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:46 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlLineString  extends KmlExtrudableGeometry{
/*
Two or more coordinate tuples, each consisting of floating point values for longitude, latitude, and altitude. The altitude component is optional.
*/
public static function getCoordinates() : KmlCoordArray;

}