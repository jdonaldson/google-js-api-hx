/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

Data for a single KML feature in JSON format, returned when a KML
feature is clicked. The data contained in this object mirrors that
associated with the feature in the KML or GeoRSS markup in which it is
declared.

*/
package google.maps;
import js.Dom;

extern class KmlFeatureData {

/*
The feature's <name>, extracted from the layer
markup.
*/
public var name : String;

/*
The feature's balloon styled text, if set.
*/
public var infoWindowHtml : String;

/*
The feature's <atom:author>, extracted from the
layer markup (if specified).
*/
public var author : KmlAuthor;

/*
The feature's <id>, extracted from the layer
markup. If no <id> has been specified, a unique ID will be
generated for this feature.
*/
public var id : String;

/*
The feature's <Snippet>, extracted from the layer
markup.
*/
public var snippet : String;

/*
The feature's <description>, extracted from the
layer markup.
*/
public var description : String;


}
