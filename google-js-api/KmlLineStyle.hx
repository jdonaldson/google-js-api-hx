/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:47 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlLineStyle  extends KmlColorStyle{
/*
Width of the line, in pixels.
*/
public static function getWidth() : Float;

/*
Width of the line, in pixels.
*/
public static function setWidth( width : Float ) : Void;

}