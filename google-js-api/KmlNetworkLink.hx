/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:44 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlNetworkLink  extends KmlFeature{
/*
Sets the link, refreshVisibility, and flyToView for the network link.
*/
public static function set( link : KmlLink, refreshVisibility : Bool, flyToView : Bool ) : Void;

/*
Specifies the location of any of the following:KML files fetched by network linksImage files used by icons in icon styles, ground overlays, and screen overlaysModel files used in the Model object
*/
public static function getLink() : KmlLink;

/*
Specifies the location of any of the following:KML files fetched by network linksImage files used by icons in icon styles, ground overlays, and screen overlaysModel files used in the Model object
*/
public static function setLink( link : KmlLink ) : Void;

/*
A value of 0 leaves the visibility of features within the control of the Google Earth user. Set the value to 1 to reset the visibility of features each time the NetworkLink is refreshed. For example, suppose a Placemark within the linked KML file has visibility set to 1 and the NetworkLink has refreshVisibility set to 1. When the file is first loaded into Google Earth, the user can clear the check box next to the item to turn off display in the 3D viewer. However, when the NetworkLink is refreshed, the Placemark will be made visible again, since its original visibility state was TRUE.
*/
public static function getRefreshVisibility() : Bool;

/*
A value of 0 leaves the visibility of features within the control of the Google Earth user. Set the value to 1 to reset the visibility of features each time the NetworkLink is refreshed. For example, suppose a Placemark within the linked KML file has visibility set to 1 and the NetworkLink has refreshVisibility set to 1. When the file is first loaded into Google Earth, the user can clear the check box next to the item to turn off display in the 3D viewer. However, when the NetworkLink is refreshed, the Placemark will be made visible again, since its original visibility state was TRUE.
*/
public static function setRefreshVisibility( refreshVisibility : Bool ) : Void;

/*
A value of 1 causes Google Earth to fly to the view of the LookAt or Camera in the NetworkLinkControl (if it exists).
*/
public static function getFlyToView() : Bool;

/*
A value of 1 causes Google Earth to fly to the view of the LookAt or Camera in the NetworkLinkControl (if it exists).
*/
public static function setFlyToView( flyToView : Bool ) : Void;

}