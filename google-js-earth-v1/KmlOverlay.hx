/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:40 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlOverlay  extends KmlFeature{
/*
Specifies the color values.
*/
public function getColor() : KmlColor;

/*
Defines the stacking order for the images in overlapping overlays. Overlays with higher drawOrder values are drawn on top of overlays with lower drawOrder values.
*/
public function getDrawOrder() : Int;

/*
Defines the stacking order for the images in overlapping overlays. Overlays with higher drawOrder values are drawn on top of overlays with lower drawOrder values.
*/
public function setDrawOrder( drawOrder : Int ) : Void;

/*
Defines the image associated with the Overlay.
*/
public function getIcon() : KmlIcon;

/*
Defines the image associated with the Overlay.
*/
public function setIcon( icon : KmlIcon ) : Void;

}