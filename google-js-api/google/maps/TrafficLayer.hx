/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A traffic layer.  This class extends MVCObject.

*/
package google.maps;
import js.Dom;

extern class TrafficLayer extends MVCObject{

/*
A layer that displays current road traffic.
*/
public function new() : Void;

/*
Renders the layer on the specified map.  If map is set to null, the layer
will be removed.
*/
public function setMap(map:Map) : Void;

/*
Returns the map on which this layer is displayed.
*/
public function getMap() : Map;


}
