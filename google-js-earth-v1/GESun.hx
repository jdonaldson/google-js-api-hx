/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:35 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GESun {
/*
Specifies whether the feature is drawn in the 3D viewer when it is initially loaded. In order for a feature to be visible, the visibility property and all of its ancestors must also be set to 1.
*/
public function getVisibility() : Bool;

/*
Specifies whether the feature is drawn in the 3D viewer when it is initially loaded. In order for a feature to be visible, the visibility property and all of its ancestors must also be set to 1.
*/
public function setVisibility( visibility : Bool ) : Void;

}