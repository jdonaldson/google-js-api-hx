/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

The valid travel modes that can be specified in a
DirectionsRequest as well as the travel modes returned in a
DirectionsStep.


*/
package google.maps;
import js.Dom;

extern class DirectionsTravelMode {

/*
Specifies a walking directions request.
*/
public static var WALKING : Dynamic;

/*
Specifies a driving directions request.
*/
public static var DRIVING : Dynamic;

/*
Specifies a bicycling directions request.
*/
public static var BICYCLING : Dynamic;


}
