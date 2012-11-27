/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:33 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEPhotoOverlayViewer {
/*
Enters the given photo overlay object, exiting any other currently active photo overlay.
If the argument is null, then any currently active photo overlay is exited and normal global navigation is enabled.
*/
public static function setPhotoOverlay( photoOverlay : KmlPhotoOverlay ) : Void;

}