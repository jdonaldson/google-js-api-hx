/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:37 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlPlacemark  extends KmlFeature{
/*
The geometry associated with the placemark.
*/
public function getGeometry() : KmlGeometry;

/*
The geometry associated with the placemark.
*/
public function setGeometry( geometry : KmlGeometry ) : Void;

}