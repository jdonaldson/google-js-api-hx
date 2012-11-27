/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

Options for the rendering of the navigation control.


*/
package google.maps;
import js.Dom;

extern class NavigationControlOptions {

/*
Position id. Used to specify the position of the control on the map.
The default position is TOP_LEFT.
*/
public var position : ControlPosition;

/*
Style id. Used to select what style of navigation control to display.
*/
public var style : NavigationControlStyle;


}
