/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:40 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlLineStyle  extends KmlColorStyle{
/*
Width of the line, in pixels.
*/
public function getWidth() : Float;

/*
Width of the line, in pixels.
*/
public function setWidth( width : Float ) : Void;

}