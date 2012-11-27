/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:39 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlColor  extends KmlObjectPartial{
/*
Set the color of an object. Parameters:
  color color of the object
*/
public static function set( color : String ) : Void;

/*
Returns the color of an object.
*/
public static function get() : String;

/*
red numerical value
*/
public static function getR() : Int;

/*
red numerical value
*/
public static function setR( r : Int ) : Void;

/*
green numerical value
*/
public static function getG() : Int;

/*
green numerical value
*/
public static function setG( g : Int ) : Void;

/*
blue numerical value
*/
public static function getB() : Int;

/*
blue numerical value
*/
public static function setB( b : Int ) : Void;

/*
opacity value
*/
public static function getA() : Int;

/*
opacity value
*/
public static function setA( a : Int ) : Void;

}