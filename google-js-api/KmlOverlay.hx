/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:48 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlOverlay  extends KmlFeature{
/*
Specifies the color values.
*/
public static function getColor() : KmlColor;

/*
Defines the stacking order for the images in overlapping overlays. Overlays with higher drawOrder values are drawn on top of overlays with lower drawOrder values.
*/
public static function getDrawOrder() : Int;

/*
Defines the stacking order for the images in overlapping overlays. Overlays with higher drawOrder values are drawn on top of overlays with lower drawOrder values.
*/
public static function setDrawOrder( drawOrder : Int ) : Void;

/*
Defines the image associated with the Overlay.
*/
public static function getIcon() : KmlIcon;

/*
Defines the image associated with the Overlay.
*/
public static function setIcon( icon : KmlIcon ) : Void;

}