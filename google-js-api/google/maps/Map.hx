/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

  This class extends MVCObject.

This class produces the following events:
Event Name : Arguments - Description
======================================
idle : Void - This event is fired when the map becomes idle after panning or
zooming.
drag : Void - This event is repeatedly fired while the user drags the map.
zoom_changed : Void - This event is fired when the map zoom property changes.
tilesloaded : Void - This event is fired when the visible tiles have finished loading.
center_changed : Void - This event is fired when the map center property changes.
resize : Void - Developers should trigger this event on the map when the div changes
size: google.maps.event.trigger(map, 'resize')
.
mousemove : MouseEvent - This event is fired whenever the user's mouse moves over the map
container.
rightclick : MouseEvent - This event is fired when the DOM contextmenu event is fired on the
map container.
bounds_changed : Void - This event is fired when the viewport bounds have changed.
mouseout : MouseEvent - This event is fired when the user's mouse exits the map container.
dblclick : MouseEvent - This event is fired when the user double-clicks on the map.
Note that the click event will also fire, right before this one.
mouseover : MouseEvent - This event is fired when the user's mouse enters the map container.
dragstart : Void - This event is fired when the user starts dragging the map.
dragend : Void - This event is fired when the user stops dragging the map.
projection_changed : Void - This event is fired when the projection has changed.
click : MouseEvent - This event is fired when the user clicks on the map
(but not when they click on a marker or infowindow).
maptypeid_changed : Void - This event is fired when the mapTypeId property changes.
*/
package google.maps;
import js.Dom;

extern class Map extends MVCObject{

/*
A registry of MapType instances by string ID.
*/
public var mapTypes : MapTypeRegistry;

/*
Additional controls to attach to the map. To add a control to the map,
add the control's <div> to the MVCArray
corresponding to the ControlPosition where it should be
rendered.
*/
public var controls : Array<MVCArray<HtmlDom>>;

/*
Additional map types to overlay.
*/
public var overlayMapTypes : MVCArray<MapType>;

/*
Creates a new map inside of the given HTML container, which is
typically a DIV element.

*/
public function new(mapDiv:HtmlDom, ?opts:MapOptions) : Void;

/*

*/
public function setOptions(options:MapOptions) : Void;

/*

*/
public function setCenter(latlng:LatLng) : Void;

/*
Returns the default StreetViewPanorama bound to the map, which
may be a default panorama embedded within the map, or the panorama set using
setStreetView().
Changes to the map's streetViewControl will be reflected in the
display of such a bound panorama.
*/
public function getStreetView() : StreetViewPanorama;

/*

*/
public function getDiv() : HtmlDom;

/*
Changes the center of the map to the given LatLng.  If the
change is less than both the width and height of the map, the transition
will be smoothly animated.
*/
public function panTo(latLng:LatLng) : Void;

/*
Changes the center of the map by the given distance in pixels.  If the
distance is less than both the width and height of the map, the transition
will be smoothly animated.  Note that the map coordinate system increases
from west to east (for x values) and north to south (for y values).

*/
public function panBy(x:Int, y:Int) : Void;

/*

*/
public function getZoom() : Float;

/*
Returns the lat/lng bounds of the current viewport. If the map is
not yet initialized (i.e. the mapType is still null), or center and zoom
have not been set then the result is null.
*/
public function getBounds() : LatLngBounds;

/*
Sets the maps to fit to the given bounds.

*/
public function fitBounds(bounds:LatLngBounds) : Void;

/*

*/
public function setZoom(zoom:Float) : Void;

/*

*/
public function getCenter() : LatLng;

/*

*/
public function setMapTypeId(mapTypeId:MapTypeId) : Void;

/*
Binds a StreetViewPanorama to the map.
This panorama overrides the default StreetViewPanorama, allowing
the map to bind to an external panorama outside of the map.
Setting the panorama to null binds the default embedded
panorama back to the map.
*/
public function setStreetView(panorama:StreetViewPanorama) : Void;

/*
Pans the map by the minimum amount necessary to contain the given
LatLngBounds.  It makes no guarantee where on the map the
bounds will be, except that as much of the bounds as possible will be
visible.  The bounds will be positioned inside the area bounded by the map
type and navigation controls, if they are present on the map.  If the bounds
is larger than the map, the map will be shifted to include the northwest
corner of the bounds.  If the change in the map's position is less than both
the width and height of the map, the transition will be smoothly animated.
*/
public function panToBounds(latLngBounds:LatLngBounds) : Void;

/*
Returns the current Projection.  If the map is not yet
initialized (i.e. the mapType is still null) then the result is null.
Listen to projection_changed and check its value to ensure it
is not null.
*/
public function getProjection() : Projection;

/*

*/
public function getMapTypeId() : MapTypeId;


}
