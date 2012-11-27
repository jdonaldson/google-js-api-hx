/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

  This class extends MVCObject.

*/
package google.maps;
import js.Dom;

extern class MapTypeRegistry extends MVCObject{

/*
The MapTypeRegistry holds the collection of custom map
types available to the map for its use.  The API consults this registry when
providing the list of avaiable map types within controls, for example.

*/
public function new() : Void;

/*
Sets the registry to associate the passed string identifier with
the passed MapType.
*/
public override function set(id:String, mapType:Dynamic) : Void;


}
