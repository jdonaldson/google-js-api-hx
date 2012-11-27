/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:30 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEGlobe  extends KmlObject{
/*
Returns the altitude for a given location on the globe. If the altitude data for the location has not yet been loaded, the return value is 0. Parameters:
  lat latitude lon longitude
*/
public static function getGroundAltitude( lat : Float, lon : Float ) : Float;

/*
The top-level features currently in the Earth instance.
*/
public static function getFeatures() : GEFeatureContainer;

}