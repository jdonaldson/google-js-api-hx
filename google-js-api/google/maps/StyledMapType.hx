/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

Creates a MapType with a custom style.

*/
package google.maps;
import js.Dom;

extern class StyledMapType {

/*
Creates a styled MapType with the specified options.
The StyledMapType takes an array of MapTypeStyles,
where each MapTypeStyle is applied to the map consecutively. A
later MapTypeStyle that applies the same
MapTypeStylers to the same selectors as an
earlier MapTypeStyle will override the earlier
MapTypeStyle.
*/
public function new(style:Array<MapTypeStyle>, ?options:StyledMapTypeOptions) : Void;


}
