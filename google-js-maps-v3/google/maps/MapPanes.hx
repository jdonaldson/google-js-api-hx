/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

This object contains the DOM elements in which overlays are rendered.
They are listed below with 'Pane 0' at the bottom and 'Pane 6' at the top.

*/
package google.maps;
import js.Dom;

extern class MapPanes {

/*
This pane contains the marker foreground images. (Pane 3).
*/
public var overlayImage : HtmlDom;

/*
This pane contains polylines, polygons, ground overlays and tile layer
overlays. (Pane 1).
*/
public var overlayLayer : HtmlDom;

/*
This pane is the lowest pane and is above the tiles. (Pane 0).
*/
public var mapPane : HtmlDom;

/*
This pane contains the info window. It is above all map overlays.
(Pane 6).
*/
public var floatPane : HtmlDom;

/*
This pane contains the info window shadow.
It is above the overlayImage, so that markers can be in the shadow of the
info window. (Pane 4).
*/
public var floatShadow : HtmlDom;

/*
This pane contains the marker shadows. (Pane 2).
*/
public var overlayShadow : HtmlDom;

/*
This pane contains transparent elements that receive DOM mouse events for
the markers. It is above the floatShadow, so that markers in the shadow of
the info window can be clickable. (Pane 5).
*/
public var overlayMouseTarget : HtmlDom;


}
