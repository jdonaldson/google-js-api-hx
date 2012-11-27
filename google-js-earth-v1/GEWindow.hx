/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:36 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEWindow  extends GEEventEmitter{
/*
Gives the Google Earth object focus.
*/
public function focus() : Void;

/*
Removes focus from the Google Earth object.
*/
public function blur() : Void;

/*
Toggles the overall visibility of Google Earth inside the browser.
*/
public function getVisibility() : Bool;

/*
Toggles the overall visibility of Google Earth inside the browser.
*/
public function setVisibility( visibility : Bool ) : Void;

}