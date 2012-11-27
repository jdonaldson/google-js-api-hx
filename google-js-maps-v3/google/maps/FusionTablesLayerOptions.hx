/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

This object defines the properties that can be set on a
FusionTablesLayer object.

*/
package google.maps;
import js.Dom;

extern class FusionTablesLayerOptions {

/*
Suppress the rendering of info windows when layer features are clicked.
*/
public var suppressInfoWindows : Bool;

/*
By default, table data is displayed as geographic features. If true,
the layer is used to display a heatmap representing the density of the
geographic features returned by querying the selected table.
*/
public var heatmap : Bool;

/*
The map on which to display the layer.
*/
public var map : Map;

/*
A Fusion Tables query to apply when selecting the data to display.
Queries should not be URL escaped.
*/
public var query : String;


}
