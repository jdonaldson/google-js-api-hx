/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:34 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEGlobe  extends KmlObject{
/*
Returns the altitude for a given location on the globe. If the altitude data for the location has not yet been loaded, the return value is 0. Parameters:
  latlatitude lonlongitude
*/
public function getGroundAltitude( lat : Float, lon : Float ) : Float;

/*
The top-level features currently in the Earth instance.
*/
public function getFeatures() : GEFeatureContainer;

}