/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation



*/
package google.maps;
import js.Dom;

extern class Size {

/*
The height along the y-axis, in pixels.
*/
public var height : Int;

/*
The width along the x-axis, in pixels.
*/
public var width : Int;

/*
Two-dimensonal size, where width is the distance on the x-axis, and height
is the distance on the y-axis.
*/
public function new(width:Float, height:Float, ?widthUnit:String, ?heightUnit:String) : Void;

/*
Returns a string representation of this Size.
*/
public function toString() : String;

/*
Compares two Sizes.
*/
public function equals(other:Size) : Bool;


}
