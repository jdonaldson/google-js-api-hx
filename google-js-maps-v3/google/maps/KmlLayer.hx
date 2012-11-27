/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A KmlLayer adds geographic markup to the map from a KML,
KMZ or GeoRSS file that is hosted on a publicly accessible web server.
A KmlFeatureData object is provided for each feature when
clicked.  This class extends MVCObject.

This class produces the following events:
Event Name : Arguments - Description
======================================
click : KmlMouseEvent - This event is fired when a feature in the layer is clicked.
defaultviewport_changed : Void - This event is fired when the KML layers default viewport has changed.
*/
package google.maps;
import js.Dom;

extern class KmlLayer extends MVCObject{

/*
Creates a KmlLayer which renders the contents of the
specified KML/KMZ file
(http://code.google.com/apis/kml/documentation/kmlreference.html) or
GeoRSS file (www.georss.org).
*/
public function new(url:String, ?opts:KmlLayerOptions) : Void;

/*
Renders the KML Layer on the specified map. If map is set to null, the
layer is removed.
*/
public function setMap(map:Map) : Void;

/*
Get the URL of the geographic markup which is being displayed.
*/
public function getUrl() : String;

/*
Get the default viewport for the layer being displayed.
*/
public function getDefaultViewport() : LatLngBounds;

/*
Get the metadata associated with this layer, as specified in the layer
markup.
*/
public function getMetadata() : KmlLayerMetadata;

/*
Get the map on which the KML Layer is being rendered.
*/
public function getMap() : Map;


}
