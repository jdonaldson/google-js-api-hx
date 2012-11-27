/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

Metadata for a single KML layer, in JSON format.

*/
package google.maps;
import js.Dom;

extern class KmlLayerMetadata {

/*
The layer's <name>, extracted from the
layer markup.
*/
public var name : String;

/*
The layer's <atom:author>, extracted from the
layer markup.
*/
public var author : KmlAuthor;

/*
The layer's <Snippet>, extracted from the
layer markup
*/
public var snippet : String;

/*
The layer's <description>, extracted from the
layer markup.
*/
public var description : String;


}
