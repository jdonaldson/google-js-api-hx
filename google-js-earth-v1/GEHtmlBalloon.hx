/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:35 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEHtmlBalloon  extends GEAbstractBalloon{
/*
The color of the text in the balloon. This must be set using the HTML hex format #RRGGBB. If not set, it is interpreted as #000000.
*/
public function getForegroundColor() : String;

/*
The color of the text in the balloon. This must be set using the HTML hex format #RRGGBB. If not set, it is interpreted as #000000.
*/
public function setForegroundColor( foregroundColor : String ) : Void;

/*
The background color of the balloon. This must be set using the HTML hex format #RRGGBB. If not set, the default is interpreted as #FFFFFF.
*/
public function getBackgroundColor() : String;

/*
The background color of the balloon. This must be set using the HTML hex format #RRGGBB. If not set, the default is interpreted as #FFFFFF.
*/
public function setBackgroundColor( backgroundColor : String ) : Void;

}