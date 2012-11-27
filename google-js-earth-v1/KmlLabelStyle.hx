/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:38 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlLabelStyle  extends KmlColorStyle{
/*
Resizes the label.
*/
public function getScale() : Float;

/*
Resizes the label.
*/
public function setScale( scale : Float ) : Void;

}