/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

Each MapTypeStyleElementType distinguishes between the
different representations of a feature.

*/
package google.maps;
import js.Dom;

extern class MapTypeStyleElementType {

/*
Apply the rule to all elements of the specified feature.
*/
public static var all : Dynamic;

/*
Apply the rule to the feature's geometry.
*/
public static var geometry : Dynamic;

/*
Apply the rule to the feature's labels.
*/
public static var labels : Dynamic;


}
