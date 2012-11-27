/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:38 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlIconStyle  extends KmlColorStyle{
/*
Resizes the icon.
*/
public function getScale() : Float;

/*
Resizes the icon.
*/
public function setScale( scale : Float ) : Void;

/*
The direction that icons should point, clockwise, and in degrees. The default is 0 (North). Values range from 0 to 360 degrees.
*/
public function getHeading() : Float;

/*
The direction that icons should point, clockwise, and in degrees. The default is 0 (North). Values range from 0 to 360 degrees.
*/
public function setHeading( heading : Float ) : Void;

/*
A custom Icon. In KmlIconStyle, the only child element of KmlIcon is href and href is an HTTP address or a local file specification used to load an icon.
*/
public function getIcon() : KmlIcon;

/*
A custom Icon. In KmlIconStyle, the only child element of KmlIcon is href and href is an HTTP address or a local file specification used to load an icon.
*/
public function setIcon( icon : KmlIcon ) : Void;

/*
Specifies the position within the Icon that is anchored to the point specified in the placemark. The x and y values can be specified in three different ways: as pixels, as fractions of the icon, or as inset pixels, which is an offset in pixels from the upper right corner of the icon. The x and y positions can be specified in different ways. For example, x can be in pixels and y can be a fraction. The origin of the coordinate system is in the lower left corner of the icon.
*/
public function getHotSpot() : KmlVec2;

}