/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:32 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEHtmlBalloon  extends GEAbstractBalloon{
/*
The color of the text in the balloon. This must be set using the HTML hex format #RRGGBB. If not set, it is interpreted as #000000.
*/
public static function getForegroundColor() : String;

/*
The color of the text in the balloon. This must be set using the HTML hex format #RRGGBB. If not set, it is interpreted as #000000.
*/
public static function setForegroundColor( foregroundColor : String ) : Void;

/*
The background color of the balloon. This must be set using the HTML hex format #RRGGBB. If not set, the default is interpreted as #FFFFFF.
*/
public static function getBackgroundColor() : String;

/*
The background color of the balloon. This must be set using the HTML hex format #RRGGBB. If not set, the default is interpreted as #FFFFFF.
*/
public static function setBackgroundColor( backgroundColor : String ) : Void;

}