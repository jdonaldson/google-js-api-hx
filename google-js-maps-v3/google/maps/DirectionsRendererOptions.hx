/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

This object defines the properties that can be set on a
DirectionsRenderer object.

*/
package google.maps;
import js.Dom;

extern class DirectionsRendererOptions {

/*
Suppress the rendering of info windows.
*/
public var suppressInfoWindows : Bool;

/*
The index of the route within the DirectionsResult
object.  The default value is 0.
*/
public var routeIndex : Int;

/*
The directions to display on the map and/or in a
<div> panel, retrieved as a
DirectionsResult object from DirectionsService.
*/
public var directions : DirectionsResult;

/*
Suppress the rendering of the BicyclingLayer when
bicycling directions are requested.
*/
public var suppressBicyclingLayer : Bool;

/*
Suppress the rendering of markers.
*/
public var suppressMarkers : Bool;

/*
The <div> in which to display the directions steps.
*/
public var panel : HtmlDom;

/*
Options for the markers.  All markers rendered by the
DirectionsRenderer will use these options.
*/
public var markerOptions : MarkerOptions;

/*
Map on which to display the directions.
*/
public var map : Map;

/*
This property indicates whether the renderer should provide UI to
select amongst alternative routes.  By default, this flag is false and a
user-selectable list of routes will be shown in the directions' associated
panel.  To hide that list, set hideRouteList to
true.
*/
public var hideRouteList : Bool;

/*
Suppress the rendering of polylines.
*/
public var suppressPolylines : Bool;

/*
By default, the input map is centered and zoomed to the bounding box
of this set of directions. If this option is set to true, the
viewport is left unchanged, unless the map's center and zoom were never set.
*/
public var preserveViewport : Bool;

/*
Options for the polylines.  All polylines rendered by the
DirectionsRenderer will use these options.
*/
public var polylineOptions : PolylineOptions;


}
