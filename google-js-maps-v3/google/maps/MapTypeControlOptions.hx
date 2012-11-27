/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

Options for the rendering of the map type control.


*/
package google.maps;
import js.Dom;

extern class MapTypeControlOptions {

/*
Position id. Used to specify the position of the control on the map.
The default position is TOP_RIGHT.
*/
public var position : ControlPosition;

/*
IDs of map types to show in the control.
*/
public var mapTypeIds : Array<Dynamic>;

/*
Style id. Used to select what style of map type control to display.
*/
public var style : MapTypeControlStyle;


}
