/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:34 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEWindow  extends GEEventEmitter{
/*
Gives the Google Earth object focus.
*/
public static function focus() : Void;

/*
Removes focus from the Google Earth object.
*/
public static function blur() : Void;

/*
Toggles the overall visibility of Google Earth inside the browser.
*/
public static function getVisibility() : Bool;

/*
Toggles the overall visibility of Google Earth inside the browser.
*/
public static function setVisibility( visibility : Bool ) : Void;

}