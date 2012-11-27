/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

Options for the rendering of the Street View address control.


*/
package google.maps;
import js.Dom;

extern class StreetViewAddressControlOptions {

/*
Position id. This id is used to specify the position of the control
on the map. The default position is TOP_LEFT.
*/
public var position : ControlPosition;

/*
CSS styles to apply to the Street View address control.  For example,
{backgroundColor: 'red'}.
*/
public var style : Dynamic<String>;


}
