/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

Identifiers for common types of navigation controls.

*/
package google.maps;
import js.Dom;

extern class NavigationControlStyle {

/*
The default navigation control. The control which DEFAULT maps to
will vary according to map size and other factors. It may change in
future versions of the API.
*/
public static var DEFAULT : Dynamic;

/*
The small zoom control similar to the one used by the native Maps
application on Android.
*/
public static var ANDROID : Dynamic;

/*
The larger control, with the zoom slider and pan directional pad.
*/
public static var ZOOM_PAN : Dynamic;

/*
The small, zoom only control.
*/
public static var SMALL : Dynamic;


}
