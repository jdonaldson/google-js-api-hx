/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation



*/
package google.maps;
import js.Dom;

extern class PolygonOptions {

/*
The zIndex compared to other polys.
*/
public var zIndex : Float;

/*
The stroke color in HTML hex style, ie. "#FFAA00"
*/
public var strokeColor : String;

/*
Indicates whether this Polygon handles
click events. Defaults to true.
*/
public var clickable : Bool;

/*
The fill color in HTML hex style, ie. "#00AAFF"
*/
public var fillColor : String;

/*
The stroke width in pixels.
*/
public var strokeWeight : Int;

/*
The ordered sequence of coordinates that designates a closed loop.
Unlike polylines, a polygon may consist of one or more paths.  As a result,
the paths property may specify one or more arrays of LatLng
coordinates.
Simple polygons may be defined using a single array of LatLngs.
More complex polygons may specify an array of arrays.  Any simple arrays are
convered into MVCArrays.
Inserting or removing LatLngs from the MVCArray
will automatically update the polygon on the map.
*/
public var paths : MVCArray<Dynamic>;

/*
Map on which to display Polygon.
*/
public var map : Map;

/*
The fill opacity between 0.0 and 1.0
*/
public var fillOpacity : Float;

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
