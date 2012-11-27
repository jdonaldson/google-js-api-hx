/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:40 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlColorStyle  extends KmlObject{
/*
Color and opacity (alpha) values.
*/
public static function getColor() : KmlColor;

/*
Specifies which color mode effect to apply to the base color.
See also:GEPlugin.COLOR_NORMAL 
GEPlugin.COLOR_INHERIT 
GEPlugin.COLOR_RANDOM
*/
public static function getColorMode() : KmlColorModeEnum;

/*
Specifies which color mode effect to apply to the base color.
See also:GEPlugin.COLOR_NORMAL 
GEPlugin.COLOR_INHERIT 
GEPlugin.COLOR_RANDOM
*/
public static function setColorMode( colorMode : KmlColorModeEnum ) : Void;

}