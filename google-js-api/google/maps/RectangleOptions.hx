/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation



*/
package google.maps;
import js.Dom;

extern class RectangleOptions {

/*
The bounds.
*/
public var bounds : LatLngBounds;

/*
The zIndex compared to other polys.
*/
public var zIndex : Float;

/*
The stroke color in HTML hex style, ie. "#FFAA00"
*/
public var strokeColor : String;

/*
Indicates whether this Rectangle handles
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
Map on which to display Rectangle.
*/
public var map : Map;

/*
The fill opacity between 0.0 and 1.0
*/
public var fillOpacity : Float;

/*
The stroke opacity between 0.0 and 1.0
*/
public var strokeOpacity : Float;


}
