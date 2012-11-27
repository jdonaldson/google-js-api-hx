/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:42 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlMultiGeometry  extends KmlGeometry{
/*
The collection of geometries that are children of this multi-geometry.
*/
public static function getGeometries() : GEGeometryContainer;

}