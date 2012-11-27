/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A polyline is a linear overlay of connected line segments on the
map.  This class extends MVCObject.

This class produces the following events:
Event Name : Arguments - Description
======================================
mousemove : MouseEvent - This event is fired when the DOM mousemove event is fired on the Polyline.
rightclick : MouseEvent - This event is fired when the Polyline is right-clicked on.
mouseup : MouseEvent - This event is fired when the DOM mouseup event is fired on the Polyline.
mouseout : MouseEvent - This event is fired on Polyline mouseout.
dblclick : MouseEvent - This event is fired when the DOM dblclick event is fired on the
Polyline.
mouseover : MouseEvent - This event is fired on Polyline mouseover.
click : MouseEvent - This event is fired when the DOM click event is fired on the Polyline.
mousedown : MouseEvent - This event is fired when the DOM mousedown event is fired on the Polyline.
*/
package google.maps;
import js.Dom;

extern class Polyline extends MVCObject{

/*
Create a polyline using the passed
Polyline options,
which specify both the path of the polyline and the stroke style to use
when drawing the polyline.
You may pass either an array of LatLngs or an
MVCArray of LatLngs when
constructing a polyline, though simple arrays are converted to
MVCArrays within the polyline upon instantiation.
*/
public function new(?opts:PolylineOptions) : Void;

/*
Sets the first path.  See Polyline
options for more details.
*/
public function setPath(path:MVCArray<Dynamic>) : Void;

/*
Renders this Polyline or Polygon on the specified map.  If map is set to
null, the Poly will be removed.
*/
public function setMap(map:Map) : Void;

/*
Retrieves the first path.
*/
public function getPath() : MVCArray<LatLng>;

/*
Returns the map on which this poly is attached.
*/
public function getMap() : Map;

/*

*/
public function setOptions(options:PolylineOptions) : Void;


}
