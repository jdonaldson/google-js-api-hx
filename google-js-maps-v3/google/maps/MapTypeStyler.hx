/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

A styler affects how a map's elements will be styled.  Each
MapTypeStyler should contain one and only one key.
If more than one key is specified in a single MapTypeStyler,
all but one will be ignored.  For example:
var rule = {hue: '#ff0000'}.

*/
package google.maps;
import js.Dom;

extern class MapTypeStyler {

/*
Lightness. Shifts lightness of colors by a percentage of the
original value if decreasing and a percentage of the remaining value if
increasing. Valid values: [-100, 100].
*/
public var lightness : Float;

/*
Inverts lightness. A value of true will invert the lightness of
the feature while preserving the hue and saturation.
*/
public var invert_lightness : Bool;

/*
Sets the hue of the feature to match the hue of the color supplied. Note
that the saturation and lightness of the feature is conserved, which means
that the feature will not match the color supplied exactly.  Valid values:
An RGB hex string, i.e. '#ff0000'.
*/
public var hue : String;

/*
Gamma. Modifies the gamma by raising the lightness to the given
power. Valid values: Floating point numbers, [0.01, 10], with 1.0
representing no change.
*/
public var gamma : Float;

/*
Visibility: Valid values: 'on', 'off' or 'simplifed'.
*/
public var visibility : String;

/*
Saturation. Shifts the saturation of colors by a percentage of the
original value if decreasing and a percentage of the remaining value
if increasing. Valid values: [-100, 100].
*/
public var saturation : Float;


}
