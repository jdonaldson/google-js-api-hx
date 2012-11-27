/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

The properties of a click event on a KML/KMZ or GeoRSS document.

*/
package google.maps;
import js.Dom;

extern class KmlMouseEvent {

/*
The position at which to anchor an infowindow on the clicked feature.
*/
public var position : LatLng;

/*
A KmlFeatureData object, containing information about the
clicked feature.
*/
public var featureData : KmlFeatureData;

/*
The offset to apply to an infowindow anchored on the clicked feature.
*/
public var pixelOffset : Size;


}
