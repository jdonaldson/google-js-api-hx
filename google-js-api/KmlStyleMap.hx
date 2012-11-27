/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:46 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlStyleMap  extends KmlStyleSelector{
/*
Sets both URLs for the placemark style.
*/
public static function setUrl( normalStyleUrl : String, highlightStyleUrl : String ) : Void;

/*
Sets both placemark styles.
*/
public static function setStyle( normalStyle : KmlStyle, highlightStyle : KmlStyle ) : Void;

/*
Defines a normal style for a placemark.
*/
public static function getNormalStyleUrl() : String;

/*
Defines a normal style for a placemark.
*/
public static function setNormalStyleUrl( normalStyleUrl : String ) : Void;

/*
Defines highlighted styles for a placemark, so that the highlighted version appears when the user mouses over the icon in Google Earth.
*/
public static function getHighlightStyleUrl() : String;

/*
Defines highlighted styles for a placemark, so that the highlighted version appears when the user mouses over the icon in Google Earth.
*/
public static function setHighlightStyleUrl( highlightStyleUrl : String ) : Void;

/*
Defines a normal style for a placemark.
*/
public static function getNormalStyle() : KmlStyle;

/*
Defines a normal style for a placemark.
*/
public static function setNormalStyle( normalStyle : KmlStyle ) : Void;

/*
Defines highlighted styles for a placemark, so that the highlighted version appears when the user mouses over the icon in Google Earth.
*/
public static function getHighlightStyle() : KmlStyle;

/*
Defines highlighted styles for a placemark, so that the highlighted version appears when the user mouses over the icon in Google Earth.
*/
public static function setHighlightStyle( highlightStyle : KmlStyle ) : Void;

}