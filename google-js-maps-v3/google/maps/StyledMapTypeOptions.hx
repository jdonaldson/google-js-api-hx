/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

This class is used to specify options when creating a
StyledMapType.

*/
package google.maps;
import js.Dom;

extern class StyledMapTypeOptions {

/*
Name to display in the map type control.
*/
public var name : String;

/*
The maximum zoom level for the map when displaying this
MapType. Optional.
*/
public var maxZoom : Float;

/*
The minimum zoom level for the map when displaying this
MapType. Optional.
*/
public var minZoom : Float;

/*
A StyledMapType whose style should be used as a base for
defining a StyledMapType's style.  The
MapTypeStyle rules will be appended to the base's styles.
*/
public var baseMapType : StyledMapType;

/*
Alt text to display when this MapType's button is hovered
over in the map type control.
*/
public var alt : String;


}
