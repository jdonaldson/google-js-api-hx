/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

The MapTypeStyle is a collection of selectors and
stylers that define how the map should be styled.  Selectors specify what
map elements should be affected and stylers specify how those elements
should be modified.

*/
package google.maps;
import js.Dom;

extern class MapTypeStyle {

/*
Selects the element type to which a styler should be applied.  An element
type distinguishes between the different representations of a
feature.  Optional; if elementType is not specified, the value
is assumed to be 'all'.
*/
public var elementType : MapTypeStyleElementType;

/*
The style rules to apply to the selectors.  The rules are applied to the
map's elements in the order they are listed in this array.
*/
public var stylers : Array<MapTypeStyler>;

/*
Selects the feature, or group of features, to which a styler should be
applied.  Optional; if featureType is not specified, the value
is assumed to be 'all'.
*/
public var featureType : MapTypeStyleFeatureType;


}
