/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:40 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlLabelStyle  extends KmlColorStyle{
/*
Resizes the label.
*/
public static function getScale() : Float;

/*
Resizes the label.
*/
public static function setScale( scale : Float ) : Void;

}