/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:49 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlVec2  extends KmlObjectPartial{
/*
Sets the coordinates of the vector.
*/
public static function set( x : Float, xUnits : KmlUnitsEnum, y : Float, yUnits : KmlUnitsEnum ) : Void;

/*
Indicates the x coordinate.
*/
public static function getX() : Float;

/*
Indicates the x coordinate.
*/
public static function setX( x : Float ) : Void;

/*
Units in which the x value is specified.
See also:GEPlugin.UNITS_FRACTION 
GEPlugin.UNITS_PIXELS 
GEPlugin.UNITS_INSET_PIXELS
*/
public static function getXUnits() : KmlUnitsEnum;

/*
Units in which the x value is specified.
See also:GEPlugin.UNITS_FRACTION 
GEPlugin.UNITS_PIXELS 
GEPlugin.UNITS_INSET_PIXELS
*/
public static function setXUnits( xUnits : KmlUnitsEnum ) : Void;

/*
Indicates the y coordinate.
*/
public static function getY() : Float;

/*
Indicates the y coordinate.
*/
public static function setY( y : Float ) : Void;

/*
Units in which the y value is specified.
See also:GEPlugin.UNITS_FRACTION 
GEPlugin.UNITS_PIXELS 
GEPlugin.UNITS_INSET_PIXELS
*/
public static function getYUnits() : KmlUnitsEnum;

/*
Units in which the y value is specified.
See also:GEPlugin.UNITS_FRACTION 
GEPlugin.UNITS_PIXELS 
GEPlugin.UNITS_INSET_PIXELS
*/
public static function setYUnits( yUnits : KmlUnitsEnum ) : Void;

}