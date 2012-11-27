/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

Possible values for feature types.  Specify these values as strings,
i.e. 'administrative' or 'poi.park'.
Stylers applied to a parent feature type automatically apply
to all child feature types. Note however that parent features may include
some additional features that are not included in one of their child feature
types.

*/
package google.maps;
import js.Dom;

extern class MapTypeStyleFeatureType {


/*
Apply the rule to arterial roads.
*/
public static var road : {arterial : Dynamic, local:Dynamic , highway : Dynamic};

/*
Apply the rule to points of interest.
*/
public static var poi : {sports_complex : Dynamic, government : Dynamic, attraction : Dynamic, school : Dynamic, place_of_worship : Dynamic, park : Dynamic, medical : Dynamic, business : Dynamic };

/*
Apply the rule to landscapes.
*/
public static var landscape : { natural : Dynamic, man_made : Dynamic};


/*
Apply the rule to all selector types.
*/
public static var all : Dynamic;

/*
Apply the rule to all transit facilities.
*/
public static var transit : { station : {bus : Dynamic, airport : Dynamic, rail : Dynamic}, line : Dynamic};


/*
Apply the rule to administrative regions.
*/
public static var administrative : { country : Dynamic, neighborhood : Dynamic, locality : Dynamic, province : Dynamic, land_parcel : Dynamic};

/*
Apply the rule to bodies of water.
*/
public static var water : Dynamic;



}
