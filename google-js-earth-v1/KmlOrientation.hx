/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:40 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlOrientation  extends KmlObject{
/*
Sets the heading, tilt, and roll of a model.
*/
public function set( heading : Float, tilt : Float, roll : Float ) : Void;

/*
Rotation about the z axis (normal to the Earth's surface). A value of 0 (the default) equals North. A positive rotation is clockwise around the z axis and specified in degrees from 0 to 360.
*/
public function getHeading() : Float;

/*
Rotation about the z axis (normal to the Earth's surface). A value of 0 (the default) equals North. A positive rotation is clockwise around the z axis and specified in degrees from 0 to 360.
*/
public function setHeading( heading : Float ) : Void;

/*
Rotation about the x axis. A positive rotation is clockwise around the x axis and specified in degrees from 0 to 360.
*/
public function getTilt() : Float;

/*
Rotation about the x axis. A positive rotation is clockwise around the x axis and specified in degrees from 0 to 360.
*/
public function setTilt( tilt : Float ) : Void;

/*
Rotation about the y axis. A positive rotation is clockwise around the y axis and specified in degrees from 0 to 360.
*/
public function getRoll() : Float;

/*
Rotation about the y axis. A positive rotation is clockwise around the y axis and specified in degrees from 0 to 360.
*/
public function setRoll( roll : Float ) : Void;

}