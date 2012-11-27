/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

The properties of a mouse event on a FusionTablesLayer.

*/
package google.maps;
import js.Dom;

extern class FusionTablesMouseEvent {

/*
The position at which to anchor an infowindow on the clicked feature.
*/
public var position : LatLng;

/*
Pre-rendered HTML content, as placed in the infowindow by the default
UI.
*/
public var infoWindowHtml : String;

/*
A collection of FusionTablesCell objects, indexed by
column name, representing the contents of the table row which included the
clicked feature.
*/
public var row : Dynamic;

/*
The offset to apply to an infowindow anchored on the clicked feature.
*/
public var pixelOffset : Size;


}
