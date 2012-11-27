/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:39 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlScreenOverlay  extends KmlOverlay{
/*
Specifies a point on (or outside of) the overlay image that is mapped to the screen coordinate. It requires x and y values, and the units for those values. Note:screenXY and overlayXY behave opposite to their corresponding behaviors in KML. This is due to a bug in the Earth API that will intentionally remain unfixed until a major version change.
*/
public function getScreenXY() : KmlVec2;

/*
Specifies a point relative to the screen origin that the overlay image is mapped to. The x and y values can be specified in three different ways: as pixels ("pixels"), as fractions of the screen ("fraction"), or as inset pixels ("insetPixels"), which is an offset in pixels from the upper right corner of the screen. The x and y positions can be specified in different ways - for example, x can be in pixels and y can be a fraction. The origin of the coordinate system is in the lower left corner of the screen. Note:screenXY and overlayXY behave opposite to their corresponding behaviors in KML. This is due to a bug in the Earth API that will intentionally remain unfixed until a major version change.
*/
public function getOverlayXY() : KmlVec2;

/*
Point relative to the screen about which the screen overlay is rotated.
*/
public function getRotationXY() : KmlVec2;

/*
Specifies the size of the image for the screen overlay, as followsA value of -1 indicates to use the native dimensionA value of 0 indicates to maintain the aspect ratioA value of n sets the value of the dimension
*/
public function getSize() : KmlVec2;

/*
Adjusts how the image is placed inside the field of view. This element is useful if your image has been rotated and deviates slightly from a desired horizontal view.
*/
public function getRotation() : Float;

/*
Adjusts how the image is placed inside the field of view. This element is useful if your image has been rotated and deviates slightly from a desired horizontal view.
*/
public function setRotation( rotation : Float ) : Void;

}