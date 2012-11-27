/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:40 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlPolygon  extends KmlExtrudableGeometry{
/*
Contains a LinearRing element.
*/
public static function getOuterBoundary() : KmlLinearRing;

/*
Contains a LinearRing element.
*/
public static function setOuterBoundary( outerBoundary : KmlLinearRing ) : Void;

/*
Contains a LinearRing element. You can specify multiple innerBoundary properties, which create multiple cut-outs inside the Polygon.
*/
public static function getInnerBoundaries() : GELinearRingContainer;

}