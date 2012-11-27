/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

Identifiers used to specify the placement of controls on the map.
Controls are positioned relative to other controls in the same layout
position.  Controls that are added first are positioned closer to the edge
of the map.

&nbsp;&nbsp;+---------------+
&nbsp;&nbsp;+&nbsp;TL&nbsp;&nbsp;&nbsp;&nbsp;T&nbsp;&nbsp;&nbsp;&nbsp;TR +
&nbsp;&nbsp;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+
&nbsp;&nbsp;+&nbsp;L&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R +
&nbsp;&nbsp;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+
&nbsp;&nbsp;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+
&nbsp;&nbsp;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+
&nbsp;&nbsp;+&nbsp;BL&nbsp;&nbsp;&nbsp;&nbsp;B&nbsp;&nbsp;&nbsp;&nbsp;BR +
&nbsp;&nbsp;+---------------+

Elements in the top or bottom row flow towards the middle.
Elements at the left or right sides flow downwards.

*/
package google.maps;
import js.Dom;

extern class ControlPosition {

/*
Elements are positioned in the top right and flow towards the
middle.
*/
public static var TOP_RIGHT : Dynamic;

/*
Elements are positioned on the left, below top-left elements, and
flow downwards.
*/
public static var LEFT : Dynamic;

/*
Elements are positioned in the center of the bottom row.
*/
public static var BOTTOM : Dynamic;

/*
Elements are positioned on the right, below top-right elements, and
flow downwards.
*/
public static var RIGHT : Dynamic;

/*
Elements are positioned in the top left and flow towards the middle.
*/
public static var TOP_LEFT : Dynamic;

/*
Elements are positioned in the bottom left and flow towards the
middle.  Elements are positioned to the right of the Google logo.
*/
public static var BOTTOM_LEFT : Dynamic;

/*
Elements are positioned in the center of the top row.
*/
public static var TOP : Dynamic;

/*
Elements are positioned in the bottom right and flow towards the
middle.  Elements are positioned to the left of the copyrights.
*/
public static var BOTTOM_RIGHT : Dynamic;


}
