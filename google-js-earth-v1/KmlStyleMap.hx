/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:39 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlStyleMap  extends KmlStyleSelector{
/*
Sets both URLs for the placemark style.
*/
public function setUrl( normalStyleUrl : String, highlightStyleUrl : String ) : Void;

/*
Sets both placemark styles.
*/
public function setStyle( normalStyle : KmlStyle, highlightStyle : KmlStyle ) : Void;

/*
Defines a normal style for a placemark.
*/
public function getNormalStyleUrl() : String;

/*
Defines a normal style for a placemark.
*/
public function setNormalStyleUrl( normalStyleUrl : String ) : Void;

/*
Defines highlighted styles for a placemark, so that the highlighted version appears when the user mouses over the icon in Google Earth.
*/
public function getHighlightStyleUrl() : String;

/*
Defines highlighted styles for a placemark, so that the highlighted version appears when the user mouses over the icon in Google Earth.
*/
public function setHighlightStyleUrl( highlightStyleUrl : String ) : Void;

/*
Defines a normal style for a placemark.
*/
public function getNormalStyle() : KmlStyle;

/*
Defines a normal style for a placemark.
*/
public function setNormalStyle( normalStyle : KmlStyle ) : Void;

/*
Defines highlighted styles for a placemark, so that the highlighted version appears when the user mouses over the icon in Google Earth.
*/
public function getHighlightStyle() : KmlStyle;

/*
Defines highlighted styles for a placemark, so that the highlighted version appears when the user mouses over the icon in Google Earth.
*/
public function setHighlightStyle( highlightStyle : KmlStyle ) : Void;

}