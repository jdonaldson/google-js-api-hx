/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:39 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlPolyStyle  extends KmlColorStyle{
/*
Specifies whether or not to fill the polygon. Possible values 1 (fill) and 0 (no fill).
*/
public static function getFill() : Bool;

/*
Specifies whether or not to fill the polygon. Possible values 1 (fill) and 0 (no fill).
*/
public static function setFill( fill : Bool ) : Void;

/*
Specifies whether to outline the polygon. Polygon outlines use the current KmlLineStyle.
*/
public static function getOutline() : Bool;

/*
Specifies whether to outline the polygon. Polygon outlines use the current KmlLineStyle.
*/
public static function setOutline( outline : Bool ) : Void;

}