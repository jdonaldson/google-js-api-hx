/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation



*/
package google.maps;
import js.Dom;

extern class PolylineOptions {

/*
The zIndex compared to other polys.
*/
public var zIndex : Float;

/*
The stroke color in HTML hex style, ie. "#FFAA00"
*/
public var strokeColor : String;

/*
Indicates whether this Polyline handles
click events. Defaults to true.
*/
public var clickable : Bool;

/*
The stroke width in pixels.
*/
public var strokeWeight : Int;

/*
Map on which to display Polyline.
*/
public var map : Map;

/*
The ordered sequence of coordinates of the Polyline.  This path may
be specified using either a simple array of LatLngs,
or an MVCArray of LatLngs.  Note that if you pass
a simple array, it will be converted to an MVCArray
Inserting or removing LatLngs in the MVCArray will automatically
update the polyline on the map.
*/
public var path : MVCArray<Dynamic>;

/*
Render each edge as a geodesic (a segment of a "great circle"). A
geodesic is the shortest path between two points along the surface of the
Earth.
*/
public var geodesic : Bool;

/*
The stroke opacity between 0.0 and 1.0
*/
public var strokeOpacity : Float;


}
