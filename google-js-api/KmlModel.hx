/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:40 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlModel  extends KmlAltitudeGeometry{
/*
Specifies the exact coordinates of the Model's origin in latitude, longitude, and altitude. Latitude and longitude measurements are standard lat-lon projection with WGS84 datum. Altitude is distance above the earth's surface, in meters, and is interpreted according to altitudeMode.
*/
public static function getLocation() : KmlLocation;

/*
Specifies the exact coordinates of the Model's origin in latitude, longitude, and altitude. Latitude and longitude measurements are standard lat-lon projection with WGS84 datum. Altitude is distance above the earth's surface, in meters, and is interpreted according to altitudeMode.
*/
public static function setLocation( location : KmlLocation ) : Void;

/*
Describes rotation of a 3D model's coordinate system to position the object in Google Earth.
*/
public static function getOrientation() : KmlOrientation;

/*
Describes rotation of a 3D model's coordinate system to position the object in Google Earth.
*/
public static function setOrientation( orientation : KmlOrientation ) : Void;

/*
Scales a model along the x, y, and z axes in the model's coordinate space
*/
public static function getScale() : KmlScale;

/*
Scales a model along the x, y, and z axes in the model's coordinate space
*/
public static function setScale( scale : KmlScale ) : Void;

/*
Sets the link of the collada model.
*/
public static function getLink() : KmlLink;

/*
Sets the link of the collada model.
*/
public static function setLink( link : KmlLink ) : Void;

}