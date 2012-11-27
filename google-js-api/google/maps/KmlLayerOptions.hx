/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

This object defines the properties that can be set on a
KmlLayer object.

*/
package google.maps;
import js.Dom;

extern class KmlLayerOptions {

/*
Suppress the rendering of info windows when layer features are clicked.
*/
public var suppressInfoWindows : Bool;

/*
The map on which to display the layer.
*/
public var map : Map;

/*
By default, the input map is centered and zoomed to the bounding box
of the contents of the layer. If this option is set to true, the
viewport is left unchanged, unless the map's center and zoom were never set.
*/
public var preserveViewport : Bool;


}
