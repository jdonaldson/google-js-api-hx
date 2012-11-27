/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A single DirectionsStep in JSON format in a
DirectionsResult.  Some fields may be undefined.

*/
package google.maps;
import js.Dom;

extern class DirectionsStep {

/*
The typical time required to perform this step in seconds and in text
form.  This property may be undefined as the duration may be unknown.
*/
public var duration : DirectionsDuration;

/*
The ending location of this step.
*/
public var end_location : LatLng;

/*
A sequence of LatLngs describing the course of this step.
*/
public var path : Array<LatLng>;

/*
The starting location of this step.
*/
public var start_location : LatLng;

/*
Instructions for this step.
*/
public var instructions : String;

/*
The distance covered by this step.  This property may be undefined as
the distance may be unknown.
*/
public var distance : DirectionsDistance;


}
