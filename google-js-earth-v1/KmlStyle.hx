/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:39 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlStyle  extends KmlStyleSelector{
/*
Specifies how icons for point placemarks are drawn in Google Earth.
*/
public function getIconStyle() : KmlIconStyle;

/*
Specifies how the name of a feature is drawn in the 3D viewer. A custom color, color mode, and scale for the label (name) can be specified.
*/
public function getLabelStyle() : KmlLabelStyle;

/*
Specifies the drawing style (color, color mode, and line width) for line geometry. Line geometry includes the outlines of outlined polygons and the extruded tether of Placemark icons (if extrusion is enabled).
*/
public function getLineStyle() : KmlLineStyle;

/*
Specifies the style for list geometry.
*/
public function getListStyle() : KmlListStyle;

/*
Specifies the drawing style for polygons, including polygon extrusions (which look like the walls of buildings) and line extrusions (which look like solid fences).
*/
public function getPolyStyle() : KmlPolyStyle;

/*
Specifies the drawing style for balloons.
*/
public function getBalloonStyle() : KmlBalloonStyle;

}