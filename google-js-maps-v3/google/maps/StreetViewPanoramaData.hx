/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

The representation of a panorama returned from the provider defined
using registerPanoProvider.

*/
package google.maps;
import js.Dom;

extern class StreetViewPanoramaData {

/*
Specifies the location meta-data for this panorama.
*/
public var location : StreetViewLocation;

/*
Specifies the custom tiles for this panorama.
*/
public var tiles : StreetViewTileData;

/*
Specifies the navigational links to adjacent panoramas.
*/
public var links : Array<StreetViewLink>;

/*
Specifies the copyright text for this panorama.
*/
public var copyright : String;


}
