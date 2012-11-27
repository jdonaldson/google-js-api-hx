/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:38 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlColorStyle  extends KmlObject{
/*
Color and opacity (alpha) values.
*/
public function getColor() : KmlColor;

/*
Specifies which color mode effect to apply to the base color.
See also:GEPlugin.COLOR_NORMAL 
GEPlugin.COLOR_INHERIT 
GEPlugin.COLOR_RANDOM
*/
public function getColorMode() : KmlColorModeEnum;

/*
Specifies which color mode effect to apply to the base color.
See also:GEPlugin.COLOR_NORMAL 
GEPlugin.COLOR_INHERIT 
GEPlugin.COLOR_RANDOM
*/
public function setColorMode( colorMode : KmlColorModeEnum ) : Void;

}