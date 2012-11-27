/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:36 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEView {
/*
Returns the screen x,y coordinates of a given point on the globe. Returns:Returns a KmlVec2 object defining the current coordinates of a geographic point, or null if the lat/lng/alt is not currently on screen. Tip: project() is the inverse of hitTest(). See also:GEPlugin.ALTITUDE_RELATIVE_TO_GROUND 
GEPlugin.ALTITUDE_ABSOLUTE 
GEPlugin.ALTITUDE_RELATIVE_TO_SEA_FLOOR
*/
public function project( lat : Float, lng : Float, alt : Float, altitudeMode : KmlAltitudeModeEnum ) : KmlVec2;

/*
Sets the  camera that views the scene in Google Earth.
*/
public function setAbstractView( view : KmlAbstractView ) : Void;

/*
Creates and returns a new KmlLookAt object, initialized to the current camera position and orientation. Use 'altitudeMode' to specify the altitude mode of the looked-at point.
See also:GEPlugin.ALTITUDE_RELATIVE_TO_GROUND 
GEPlugin.ALTITUDE_ABSOLUTE 
GEPlugin.ALTITUDE_RELATIVE_TO_SEA_FLOOR
*/
public function copyAsLookAt( altitudeMode : KmlAltitudeModeEnum ) : KmlLookAt;

/*
Creates and returns a new KmlCamera object, initialized to the current camera position and orientation. Use 'altitudeMode' to specify the altitude mode of the new camera.
See also:GEPlugin.ALTITUDE_RELATIVE_TO_GROUND 
GEPlugin.ALTITUDE_ABSOLUTE 
GEPlugin.ALTITUDE_RELATIVE_TO_SEA_FLOOR
*/
public function copyAsCamera( altitudeMode : KmlAltitudeModeEnum ) : KmlCamera;

/*
Returns a bounding box that completely contains the region of the globe that is currently visible. The returned box will be larger than what is strictly visible, if that is necessary to include everything that is visible. Returns:Returns a KmlLatLonBox corresponding to the bounding box of the current viewport or null if no part of the globe is visible.
*/
public function getViewportGlobeBounds() : KmlLatLonBox;

/*
Given a point on the screen in pixel coordinates, returns a GEHitTestResult with information about the geographic location corresponding to the point on the screen. Tip: hitTest() is the inverse of project(). Parameters:
  xThe x coordinate, measured from the left or right edge of the plug-in window, depending on xUnits. xUnitsThe units in which the x value is specified. yThe y coordinate, measured from the top or bottom edge of the plug-in window, depending on yUnits. yUnitsThe units in which the y value is specified. modeSelects which categories of objects to include in the hit test. Categories may be combined via JavaScript's OR operator, '|'. Returns:Returns a GEHitTestResult, or null if the screen point is not over anything selected by mode. Note that for HIT_TEST_GLOBE, resulting altitude values will always be 0. See also:GEPlugin.UNITS_PIXELS 
GEPlugin.UNITS_INSET_PIXELS 
GEPlugin.UNITS_FRACTION 
GEPlugin.HIT_TEST_GLOBE 
GEPlugin.HIT_TEST_TERRAIN 
GEPlugin.HIT_TEST_BUILDINGS
*/
public function hitTest( x : Float, xUnits : KmlUnitsEnum, y : Float, yUnits : KmlUnitsEnum, mode : GEHitTestModeEnum ) : GEHitTestResult;

/*
Event fired when the view begins changing in Earth. This event will be fired once, followed by successive viewchange events, and ending with a viewchangeend event.
*/
public function viewchangebegin() : Void;

/*
Event fired when the view stops changing in Earth.
*/
public function viewchangeend() : Void;

/*
Event fired while the view is changing in Earth. This event will be triggered in rapid succession while the camera is in motion.
*/
public function viewchange() : Void;

}