/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation



*/
package google.maps;
import js.Dom;

extern class MapOptions {

/*
A StreetViewPanorama to display when the Street View
pegman is dropped on the map.  If no panorama is specified, a default
StreetViewPanorama will be displayed in the map's
div when the pegman is dropped.
*/
public var streetView : StreetViewPanorama;

/*
If true, do not clear the contents of the Map div.
*/
public var noClear : Bool;

/*
The initial Map center. Required.
*/
public var center : LatLng;

/*
The initial display options for the scale control.
*/
public var scaleControlOptions : ScaleControlOptions;

/*
The initial enabled/disabled state of the Street View pegman control.
*/
public var streetViewControl : Bool;

/*
If false, prevents the map from being dragged.  Dragging is enabled by
default.
*/
public var draggable : Bool;

/*
Enables/disables zoom and center on double click. Enabled by default.
*/
public var disableDoubleClickZoom : Bool;

/*
Enables/disables all default UI. May be overridden individually.
*/
public var disableDefaultUI : Bool;

/*
If false, disables scrollwheel zooming on the map.  The scrollwheel is
enabled by default.
*/
public var scrollwheel : Bool;

/*
The name or url of the cursor to display when an object is dragging.
*/
public var draggingCursor : String;

/*
The name or url of the cursor to display on a draggable object.
*/
public var draggableCursor : String;

/*
If false, prevents the map from being controlled by the keyboard.
Keyboard shortcuts are enabled by default.
*/
public var keyboardShortcuts : Bool;

/*
The initial display options for the Map type control.
*/
public var mapTypeControlOptions : MapTypeControlOptions;

/*
The initial Map mapTypeId. Required.
*/
public var mapTypeId : MapTypeId;

/*
The initial enabled/disabled state of the navigation control.
*/
public var navigationControl : Bool;

/*
The initial enabled/disabled state of the Map type control.
*/
public var mapTypeControl : Bool;

/*
The initial Map zoom level. Required.
*/
public var zoom : Float;

/*
The initial enabled/disabled state of the scale control.
*/
public var scaleControl : Bool;

/*
The initial display options for the navigation control.
*/
public var navigationControlOptions : NavigationControlOptions;

/*
Color used for the background of the Map div.  This color will be
visible when tiles have not yet loaded as the user pans.  This option can
only be set when the map is initialized.
*/
public var backgroundColor : String;


}
