/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:36 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEPhotoOverlayViewer {
/*
Enters the given photo overlay object, exiting any other currently active photo overlay.
If the argument is null, then any currently active photo overlay is exited and normal global navigation is enabled.
*/
public function setPhotoOverlay( photoOverlay : KmlPhotoOverlay ) : Void;

}