/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A polygon (like a polyline) defines a series of connected coordinates
in an ordered sequence; additionally, polygons form a closed loop and define
a filled region.  This class extends MVCObject.

This class produces the following events:
Event Name : Arguments - Description
======================================
mousemove : MouseEvent - This event is fired when the DOM mousemove event is fired on the Polygon.
rightclick : MouseEvent - This event is fired when the Polygon is right-clicked on.
mouseup : MouseEvent - This event is fired when the DOM mouseup event is fired on the Polygon.
mouseout : MouseEvent - This event is fired on Polygon mouseout.
dblclick : MouseEvent - This event is fired when the DOM dblclick event is fired on the
Polygon.
mouseover : MouseEvent - This event is fired on Polygon mouseover.
click : MouseEvent - This event is fired when the DOM click event is fired on the Polygon.
mousedown : MouseEvent - This event is fired when the DOM mousedown event is fired on the Polygon.
*/
package google.maps;
import js.Dom;

extern class Polygon extends MVCObject{

/*
Create a polygon using the passed
Polygon options, which
specify the polygon's path, the stroke style for the polygon's edges, and
the fill style for the polygon's interior regions.
A polygon may contain one or more paths, where each path consists of an array
of LatLngs.  You may pass either an array of LatLngs or an
MVCArray of LatLngs when
constructing these paths.  Arrays are converted to MVCArrays
within the polygon upon instantiation.
*/
public function new(?opts:PolygonOptions) : Void;

/*
Sets the first path.  See Polyline
options for more details.
*/
public function setPath( path: MVCArray<Dynamic>) : Void;
/*
Renders this Polyline or Polygon on the specified map.  If map is set to
null, the Poly will be removed.
*/
public function setMap(map:Map) : Void;

/*
Retrieves the paths for this Polygon.
*/
public function getPaths() : MVCArray<MVCArray<LatLng>>;

/*
Retrieves the first path.
*/
public function getPath() : MVCArray<LatLng>;

/*
Sets the path for this Polygon.
*/
public function setPaths(paths:MVCArray<Dynamic>) : Void;

/*

*/
public function setOptions(options:PolygonOptions) : Void;

/*
Returns the map on which this poly is attached.
*/
public function getMap() : Map;


}
