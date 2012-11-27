/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:36 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlBalloonStyle  extends KmlObject{
/*
Background color of the balloon (optional).
*/
public static function getBgColor() : KmlColor;

/*
Foreground color for text. The default is black (ff000000).
*/
public static function getTextColor() : KmlColor;

/*
The text contained in the balloon.
*/
public static function getText() : String;

/*
The text contained in the balloon.
*/
public static function setText( text : String ) : Void;

}