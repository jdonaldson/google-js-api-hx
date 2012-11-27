/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

You can implement this class if you want to display custom types
of overlay objects on the map.  This class extends MVCObject.

*/
package google.maps;
import js.Dom;

extern class OverlayView extends MVCObject{

/*
You should inherit from this class by setting your overlay's
prototype to new OverlayView.prototype.  You must implement
three methods:
onAdd(), draw(), and onRemove().  In the add() method, you should create DOM
objects and append them as children of the panes.  In the draw() method,
you should position these elements. In the onRemove() method, you should
remove the objects from the DOM.  You must call setMap() with a valid Map
object to trigger the call to the onAdd() method and setMap(null) in order
to trigger the onRemove() method.  The setMap() method can be called at the
time of construction or at any point afterward when the overlay should be
re-shown after removing.  The draw() method will then be called whenever a
map property changes that could change the position of the element, such as
zoom, center, or map type.

*/
public function new() : Void;

/*
Adds the overlay to the map or panorama.

*/
public function setMap(map:Dynamic) : Void;

/*
Returns the panes in which this OverlayView can be rendered.  Only available
after draw has been called.
*/
public function getPanes() : MapPanes;

/*
Implement this method to initialize the overlay DOM elements.  This method
is called once after setMap() is called with a valid map.  At this point,
panes and projection will have been initialized.
*/
public function onAdd() : Void;

/*
Implement this method to remove your elements from the DOM.  This method is
called once following a call to setMap(null).
*/
public function onRemove() : Void;

/*

*/
public function getMap() : Map;

/*
Implement this method to draw or update the overlay.  This method is called
after onAdd() and when the position from projection.fromLatLngToPixel() would
return a new value for a given LatLng.  This can happen on change of zoom,
center, or map type.  It is not necessarily called on drag or resize.
*/
public function draw() : Void;

/*
Returns the MapCanvasProjection object associated with this OverlayView.
Only available after draw has been called.
*/
public function getProjection() : MapCanvasProjection;


}
