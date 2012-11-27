/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A collection of references to adjacent Street View panos.

*/
package google.maps;
import js.Dom;

extern class StreetViewLink {

/*
Opacity of the link
*/
public var roadOpacity : Float;

/*
Color of the link
*/
public var roadColor : String;

/*
The heading of the link.
*/
public var heading : Float;

/*
A localized string describing the link.
*/
public var description : String;

/*
A unique identifier for the panorama. This id is stable within a
session but unstable across sessions.
*/
public var pano : String;


}
