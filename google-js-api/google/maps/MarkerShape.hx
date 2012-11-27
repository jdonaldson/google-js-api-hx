/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

This object defines the marker shape to use in determination of a
marker's clickable region.  The shape consists of two properties &mdash;
type and coord &mdash; which define the general
type of marker and coordinates specific to that type of marker.

*/
package google.maps;
import js.Dom;

extern class MarkerShape {

/*
The format of this attribute depends on the value of the
type and follows the w3 AREA coords specification
found at

http://www.w3.org/TR/REC-html40/struct/objects.html#adef-coords.
coord is an array of integers that specify the pixel
position of the shape relative to the top-left corner of the target image.
The coordinates depend on the value of type as follows:
  - circ or circle: coord is
[x1,y1,r] where x1,y2 are the coordinates of the center of the
circle, and r is the radius of the circle.
  - poly or polygon: coord is
[x1,y1,x2,y2...xn,yn] where each x,y pair contains the
coordinates of one vertex of the polygon.
  - rect or rectangle: coord is
[x1,y1,x2,y2] where x1,y1 are the coordinates of the
upper-left corner of the rectangle and x2,y2 are the coordinates of the
lower-right coordinates of the rectangle.
*/
public var coord : Array<Float>;

/*
Describes the shape's type and can be circle,
poly or rectangle.
*/
public var type : String;


}
