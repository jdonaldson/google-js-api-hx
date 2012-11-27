/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:38 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlColor  extends KmlObjectPartial{
/*
Set the color of an object. Parameters:
  colorcolor of the object
*/
public function set( color : String ) : Void;

/*
Returns the color of an object.
*/
public function get() : String;

/*
red numerical value
*/
public function getR() : Int;

/*
red numerical value
*/
public function setR( r : Int ) : Void;

/*
green numerical value
*/
public function getG() : Int;

/*
green numerical value
*/
public function setG( g : Int ) : Void;

/*
blue numerical value
*/
public function getB() : Int;

/*
blue numerical value
*/
public function setB( b : Int ) : Void;

/*
opacity value
*/
public function getA() : Int;

/*
opacity value
*/
public function setA( a : Int ) : Void;

}