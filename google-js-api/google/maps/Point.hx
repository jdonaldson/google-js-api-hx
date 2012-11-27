/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation



*/
package google.maps;
import js.Dom;

extern class Point {

/*
The X coordinate
*/
public var x : Float;

/*
The Y coordinate
*/
public var y : Float;

/*
A point on a two-dimensional plane.
*/
public function new(x:Float, y:Float) : Void;

/*
Compares two Points
*/
public function equals(other:Point) : Bool;

/*
Returns a string representation of this Point.
*/
public function toString() : String;


}
