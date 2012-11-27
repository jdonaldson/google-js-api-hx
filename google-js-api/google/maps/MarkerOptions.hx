/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation



*/
package google.maps;
import js.Dom;

extern class MarkerOptions {

/*
Marker position. Required.
*/
public var position : LatLng;

/*
All Markers are displayed on the map in order of their zIndex,
with higher values displaying in front of Markers with lower values.
By default, Markers are displayed according to their latitude, with
Markers of lower latitudes appearing in front of Markers at higher
latitudes.
*/
public var zIndex : Float;

/*
Rollover text
*/
public var title : String;

/*
Shadow image
*/
public var shadow : Dynamic;

/*
Mouse cursor to show on hover
*/
public var cursor : String;

/*
If true, the marker receives mouse and touch events.  Default value is
true.
*/
public var clickable : Bool;

/*
Image map region definition used for drag/click.
*/
public var shape : MarkerShape;

/*
If true, the marker can be dragged.  Default value is false.
*/
public var draggable : Bool;

/*
Icon for the foreground
*/
public var icon : Dynamic;

/*
If true, the marker shadow will not be displayed.
*/
public var flat : Bool;

/*
Map on which to display Marker.
*/
public var map : Dynamic;

/*
If true, the marker is visible
*/
public var visible : Bool;


}
