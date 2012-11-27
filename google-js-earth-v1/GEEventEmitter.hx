/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:35 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEEventEmitter  extends GESchemaObject{
/*
Triggers an event when the user clicks a location in Google Earth with the mouse.
*/
public function click( event : KmlMouseEvent ) : Void;

/*
Triggers an event when the user double clicks a location in Google Earth with the mouse.
*/
public function dblclick( event : KmlMouseEvent ) : Void;

/*
Triggers an event when the user moves the mouse pointer over a location in Google Earth.
*/
public function mouseover( event : KmlMouseEvent ) : Void;

/*
Triggers an event when the user presses the mouse button over a location in Google Earth.
*/
public function mousedown( event : KmlMouseEvent ) : Void;

/*
Triggers an event when the user releases the mouse button over a location in Google Earth.
*/
public function mouseup( event : KmlMouseEvent ) : Void;

/*
Triggers an event when the user moves the mouse off of the object in Google Earth.
*/
public function mouseout( event : KmlMouseEvent ) : Void;

/*
Triggers an event when the user moves the mouse inside Google Earth.
*/
public function mousemove( event : KmlMouseEvent ) : Void;

}