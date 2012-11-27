/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A single address component within a GeocoderResult.
A full address may consist of multiple address components.

*/
package google.maps;
import js.Dom;

extern class GeocoderAddressComponent {

/*
The full text of the address component
*/
public var long_name : String;

/*
An array of strings denoting the type of this address component
*/
public var types : Array<String>;

/*
The abbreviated, short text of the given address component
*/
public var short_name : String;


}
