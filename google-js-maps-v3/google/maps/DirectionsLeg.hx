/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A single leg consisting of a set of steps in JSON format in a
DirectionsResult.
Some fields in the leg may not be returned for all requests. (This object
was formerly known as "DirectionsRoute".)

*/
package google.maps;
import js.Dom;

extern class DirectionsLeg {

/*
An array of DirectionsSteps, each of which contains
information about the individual steps in this leg.
*/
public var steps : Array<DirectionsStep>;

/*
The total duration of this leg.  This property may be undefined as
the duration may be unknown.
*/
public var duration : DirectionsDuration;

/*
The address of the origin of this leg.
*/
public var start_address : String;

/*
The DirectionsService calculates directions between
locations by using the nearest transportation option (usually a road) at the
start and end locations. end_location indicates the actual
geocoded destination, which may be different than the
end_location of the last step if, for example, the road is not
near the destination of this leg.
*/
public var end_location : LatLng;

/*
The DirectionsService calculates directions between
locations by using the nearest transportation option (usually a road) at the
start and end locations. start_location indicates the actual
geocoded origin, which may be different than the start_location
of the first step if, for example, the road is not near the origin of this
leg.
*/
public var start_location : LatLng;

/*
The address of the destination of this leg.
*/
public var end_address : String;

/*
The total distance covered by this leg.  This property may be
undefined as the distance may be unknown.
*/
public var distance : DirectionsDistance;


}
