/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:37 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlBalloonStyle  extends KmlObject{
/*
Background color of the balloon (optional).
*/
public function getBgColor() : KmlColor;

/*
Foreground color for text. The default is black (ff000000).
*/
public function getTextColor() : KmlColor;

/*
The text contained in the balloon.
*/
public function getText() : String;

/*
The text contained in the balloon.
*/
public function setText( text : String ) : Void;

}