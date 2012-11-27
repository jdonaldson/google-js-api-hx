/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A point of view object which specifies the camera's orientation at
the Street View panorama's position.  The point of view is defined as
heading, pitch and zoom.

*/
package google.maps;
import js.Dom;

extern class StreetViewPov {

/*
The camera pitch in degrees, relative to the street view vehicle.
      Ranges from 90° (directly upwards) to -90° (directly downwards).
*/
public var pitch : Float;

/*
The camera heading in degrees relative to true north. True north is 0°,
      east is 90°, south is 180°, west is 270°.
*/
public var heading : Float;

/*
The zoom level. Fully zoomed-out is level 0, zooming in increases the
      zoom level.
*/
public var zoom : Float;


}
