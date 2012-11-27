/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:38 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlContainer  extends KmlFeature{
/*
A collection of features, such as name, description, and so on.
*/
public function getFeatures() : GEFeatureContainer;

}