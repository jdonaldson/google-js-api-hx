/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

Displays the panorama for a given LatLng or panorama ID.
A StreetViewPanorama object provides a Street View "viewer"
which can be stand-alone within a separate &lt;div&gt; or bound
to a Map.
  This class extends MVCObject.

This class produces the following events:
Event Name : Arguments - Description
======================================
resize : Void - Developers should trigger this event on the panorama when its div
changes size: 
google.maps.event.trigger(panorama, 'resize').
pov_changed : Void - This event is fired when the panorama's point-of-view changes. The
point of view changes as the pitch, zoom, or heading changes.
visible_changed : Void - This event is fired when the panorama's visibility changes.  The
visibility is changed when the Pegman id dragged onto the map, the close
button is clicked, or setVisible() is called.
links_changed : Void - This event is fired when the panorama's links change.  The links
change asynchronously following a pano id change.
closeclick : Event - This event is fired when the close button is clicked.
position_changed : Void - This event is fired when the panorama's position changes.  The
position changes as the user navigates through the panorama or the position
is set manually.
pano_changed : Void - This event is fired when the panorama's pano id changes.  The pano may
change as the user navigates through the panorama or the position is
manually set.  Note that not all position changes trigger a
pano_changed.
*/
package google.maps;
import js.Dom;

extern class StreetViewPanorama extends MVCObject{

/*
Additional controls to attach to the panorama. To add a control to the
panorama, add the control's <div> to the
MVCArray corresponding to the ControlPosition
where it should be rendered.
*/
public var controls : Array<MVCArray<HtmlDom>>;

/*
Creates a panorama with the passed StreetViewPanoramaOptions.
*/
public function new(container:HtmlDom, ?opts:StreetViewPanoramaOptions) : Void;

/*
Set the custom panorama provider called on pano change to load custom
panoramas.
*/
public function registerPanoProvider(provider:String->StreetViewPanoramaData) : Void;

/*
Sets the current LatLng position for the Street View panorama.
*/
public function setPosition(latLng:LatLng) : Void;

/*
Returns the current LatLng position for the Street View panorama.
*/
public function getPosition() : LatLng;

/*
Sets to true to make the panorama visible.  If set to
false, the panorama will be hidden whether it is embedded in
the map or in its own <div>.
*/
public function setVisible(flag:Bool) : Void;

/*
Sets the current panorama ID for the Street View panorama.
*/
public function setPano(pano:String) : Void;

/*
Returns the set of navigation links for the Street View panorama.
*/
public function getLinks() : Array<StreetViewLink>;

/*
Returns the current point of view for the Street View panorama.
*/
public function getPov() : StreetViewPov;

/*
Sets the point of view for the Street View panorama.
*/
public function setPov(pov:StreetViewPov) : Void;

/*
Returns true if the panorama is visible.  It does not specify
whether Street View imagery is available at the specified position.
*/
public function getVisible() : Bool;

/*
Returns the current panorama ID for the Street View panorama.  This id is
stable within the browser's current session only.
*/
public function getPano() : String;


}
