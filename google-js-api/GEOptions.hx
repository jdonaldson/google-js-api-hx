/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:32 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEOptions {
/*
Sets the map type to Earth or sky mode.
*/
public static function setMapType( type : GEMapTypeEnum ) : Void;

/*
Speed of zoom when user rolls the mouse wheel. Default is 1. Set to a negative number to reverse the zoom direction.
*/
public static function getScrollWheelZoomSpeed() : Float;

/*
Speed of zoom when user rolls the mouse wheel. Default is 1. Set to a negative number to reverse the zoom direction.
*/
public static function setScrollWheelZoomSpeed( scrollWheelZoomSpeed : Float ) : Void;

/*
Specifies the speed at which the camera moves (0 to 5.0). Set to SPEED_TELEPORT to immediately appear at selected destination.
See also:GEPlugin.SPEED_TELEPORT
*/
public static function getFlyToSpeed() : Float;

/*
Specifies the speed at which the camera moves (0 to 5.0). Set to SPEED_TELEPORT to immediately appear at selected destination.
See also:GEPlugin.SPEED_TELEPORT
*/
public static function setFlyToSpeed( flyToSpeed : Float ) : Void;

/*
Show or hide the status bar. Disabled by default.
*/
public static function getStatusBarVisibility() : Bool;

/*
Show or hide the status bar. Disabled by default.
*/
public static function setStatusBarVisibility( statusBarVisibility : Bool ) : Void;

/*
Show or hide the grid. Disabled by default.
*/
public static function getGridVisibility() : Bool;

/*
Show or hide the grid. Disabled by default.
*/
public static function setGridVisibility( gridVisibility : Bool ) : Void;

/*
Show or hide the overview map. Disabled by default.
*/
public static function getOverviewMapVisibility() : Bool;

/*
Show or hide the overview map. Disabled by default.
*/
public static function setOverviewMapVisibility( overviewMapVisibility : Bool ) : Void;

/*
Show or hide the scale legend. Disabled by default.
*/
public static function getScaleLegendVisibility() : Bool;

/*
Show or hide the scale legend. Disabled by default.
*/
public static function setScaleLegendVisibility( scaleLegendVisibility : Bool ) : Void;

/*
Show or hide the blue atmosphere that appears around the perimeter of the Earth. On by default.
*/
public static function getAtmosphereVisibility() : Bool;

/*
Show or hide the blue atmosphere that appears around the perimeter of the Earth. On by default.
*/
public static function setAtmosphereVisibility( atmosphereVisibility : Bool ) : Void;

/*
Enable or disable user panning and zooming of the map. Enabled by default.
Note:This also enables and disables keyboard navigation (arrow keys, page-up/page-down, etc).
*/
public static function getMouseNavigationEnabled() : Bool;

/*
Enable or disable user panning and zooming of the map. Enabled by default.
Note:This also enables and disables keyboard navigation (arrow keys, page-up/page-down, etc).
*/
public static function setMouseNavigationEnabled( mouseNavigationEnabled : Bool ) : Void;

/*
Returns true if the animation of features as they are added or removed from the globe has been enabled.
*/
public static function getFadeInOutEnabled() : Bool;

/*
Enable or disable the animation of a feature when it is added or removed from the Google Earth plugin. The animation consists of a slight change of scale. Default is true.
*/
public static function setFadeInOutEnabled( fadeInOutEnabled : Bool ) : Void;

/*
Returns true if display units are set to imperial units (feet and miles). False denotes metric units (meters and kilometers).
*/
public static function getUnitsFeetMiles() : Bool;

/*
Set display units to imperial (feet and miles) or metric (meters and kilometers). This setting affects only the values displayed in the status bar and the scale bar. The values passed and returned with an object's getters and setters are always metric.
*/
public static function setUnitsFeetMiles( unitsFeetMiles : Bool ) : Void;

}