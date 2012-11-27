/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:40 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlLineString  extends KmlExtrudableGeometry{
/*
Two or more coordinate tuples, each consisting of floating point values for longitude, latitude, and altitude. The altitude component is optional.
*/
public function getCoordinates() : KmlCoordArray;

}