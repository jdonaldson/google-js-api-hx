/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

Options defining the properties of a StreetViewPanorama
object.


*/
package google.maps;
import js.Dom;

extern class StreetViewPanoramaOptions {

/*
The LatLng position of the Street View panorama.
*/
public var position : LatLng;

/*
The enabled/disabled state of the address control.
*/
public var addressControl : Bool;

/*
The camera orientation, specified as heading, pitch, and zoom, for the
panorama.
*/
public var pov : StreetViewPov;

/*
The display options for the address control.
*/
public var addressControlOptions : StreetViewAddressControlOptions;

/*
The enabled/disabled state of the links control.
*/
public var linksControl : Bool;

/*
Custom panorama provider, which takes a string pano id and returns an
object defining the panorama given that id.  This function must be defined
to specify custom panorama imagery.
*/
public var panoProvider : String->StreetViewPanoramaData;

/*
If true, the close button is displayed. Disabled by
default.
*/
public var enableCloseButton : Bool;

/*
The panorama ID, which should be set when specifying a custom
panorama.
*/
public var pano : String;

/*
The enabled/disabled state of the navigation control.
*/
public var navigationControl : Bool;

/*
The display options for the navigation control.
*/
public var navigationControlOptions : NavigationControlOptions;


}
