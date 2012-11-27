/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

Renders directions retrieved in the form of a
DirectionsResult
object retrieved from the
DirectionsService.  This class extends MVCObject.

*/
package google.maps;
import js.Dom;

extern class DirectionsRenderer extends MVCObject{

/*
Creates the renderer with the given options.  Directions can be
rendered on a map (as visual overlays) or additionally on a
<div> panel (as textual instructions).
*/
public function new(?opts:DirectionsRendererOptions) : Void;

/*
Returns the renderer's current set of directions.
*/
public function getDirections() : DirectionsResult;

/*
Set the (zero-based) index of the route in the DirectionsResult
object to render.  By default, the first route in the array will be rendered.
*/
public function setRouteIndex(routeIndex:Int) : Void;

/*
Change the options settings of this DirectionsRenderer after
initialization.
*/
public function setOptions(options:DirectionsRendererOptions) : Void;

/*
Returns the current (zero-based) route index in use by this
DirectionsRenderer object.
*/
public function getRouteIndex() : Int;

/*
This method specifies the map on which directions will be rendered.  Pass
null to remove the directions from the map.
*/
public function setMap(map:Map) : Void;

/*
Set the renderer to use the result from the DirectionsService.
Setting a valid set of directions in this manner will display the directions
on the renderer's designated map and panel.
*/
public function setDirections(directions:DirectionsResult) : Void;

/*
Returns the panel <div> in which the
DirectionsResult is rendered.
*/
public function getPanel() : HtmlDom;

/*
This method renders the directions in a
<div>.  Pass null to remove the content from
the panel.
*/
public function setPanel(panel:HtmlDom) : Void;

/*
Returns the map on which the DirectionsResult is rendered.
*/
public function getMap() : Map;


}
