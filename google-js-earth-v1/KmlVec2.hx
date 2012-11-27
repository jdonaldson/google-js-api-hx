/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:40 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlVec2  extends KmlObjectPartial{
/*
Sets the coordinates of the vector.
*/
public function set( x : Float, xUnits : KmlUnitsEnum, y : Float, yUnits : KmlUnitsEnum ) : Void;

/*
Indicates the x coordinate.
*/
public function getX() : Float;

/*
Indicates the x coordinate.
*/
public function setX( x : Float ) : Void;

/*
Units in which the x value is specified.
See also:GEPlugin.UNITS_FRACTION 
GEPlugin.UNITS_PIXELS 
GEPlugin.UNITS_INSET_PIXELS
*/
public function getXUnits() : KmlUnitsEnum;

/*
Units in which the x value is specified.
See also:GEPlugin.UNITS_FRACTION 
GEPlugin.UNITS_PIXELS 
GEPlugin.UNITS_INSET_PIXELS
*/
public function setXUnits( xUnits : KmlUnitsEnum ) : Void;

/*
Indicates the y coordinate.
*/
public function getY() : Float;

/*
Indicates the y coordinate.
*/
public function setY( y : Float ) : Void;

/*
Units in which the y value is specified.
See also:GEPlugin.UNITS_FRACTION 
GEPlugin.UNITS_PIXELS 
GEPlugin.UNITS_INSET_PIXELS
*/
public function getYUnits() : KmlUnitsEnum;

/*
Units in which the y value is specified.
See also:GEPlugin.UNITS_FRACTION 
GEPlugin.UNITS_PIXELS 
GEPlugin.UNITS_INSET_PIXELS
*/
public function setYUnits( yUnits : KmlUnitsEnum ) : Void;

}