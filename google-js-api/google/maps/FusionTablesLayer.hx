/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A FusionTablesLayer allows you to display data from a
Google Fusion Table on a map, as a rendered layer. (See
http://code.google.com/apis/fusiontables for more information about Fusion
Tables). Table data can be queried using the same query language as is used
in the Fusion Tables API.  This class extends MVCObject.

This class produces the following events:
Event Name : Arguments - Description
======================================
click : FusionTablesMouseEvent - This event is fired when a feature in the layer is clicked.
*/
package google.maps;
import js.Dom;

extern class FusionTablesLayer extends MVCObject{

/*
A layer that displays data from a Fusion Table.
*/
public function new(tableId:String, ?opts:FusionTablesLayerOptions) : Void;

/*

*/
public function setOptions(options:FusionTablesLayerOptions) : Void;

/*
Returns the ID of the table from which to query data.
*/
public function getTableId() : Float;

/*
Renders the layer on the specified map.  If map is set to null, the layer
will be removed.
*/
public function setMap(map:Map) : Void;

/*
Sets the ID of the table from which to query data.
Setting this value will cause the layer to be redrawn.
*/
public function setTableId(tableId:Float) : Void;

/*
Sets the query to execute on the table specified by the tableId
property. The layer will be updated to display the results of the query.
*/
public function setQuery(query:String) : Void;

/*

*/
public function getQuery() : String;

/*
Returns the map on which this layer is displayed.
*/
public function getMap() : Map;


}
