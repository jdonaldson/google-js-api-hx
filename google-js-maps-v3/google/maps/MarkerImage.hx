/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation



*/
package google.maps;
import js.Dom;

extern class MarkerImage {

/*
Defines an image to be used as the icon or shadow for a Marker. 'origin' and
'size' are used to select a segment of a sprite image and 'anchor' overrides
the position of the anchor point from its default bottom middle position.
The anchor of an image is the pixel to which the system refers in tracking
the image's position. By default, the anchor is set to the bottom middle of
the image (coordinates width/2, height). So when a marker is placed at a
given LatLng, the pixel defined as the anchor is positioned at the specified
LatLng. To scale the image, whether sprited or not, set the value of
scaledSize to the size of the whole image and set size, origin and anchor in
scaled values.
The MarkerImage cannot be changed once constructed.

*/
public function new(url:String, ?size:Size, ?origin:Point, ?anchor:Point, ?scaledSize:Size) : Void;


}
