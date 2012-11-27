/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:37 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlLod  extends KmlObject{
/*
Sets the minLodPixels, maxLodPixels, minFadeExtent, and maxFadeExtent for the projected region on the screen.
*/
public function set( minLodPixels : Float, maxLodPixels : Float, minFadeExtent : Float, maxFadeExtent : Float ) : Void;

/*
Specifies measurement in screen pixels that represents the minimum limit of the visibility range for a given Region. Google Earth calculates the size of the region when projected onto screen space. Then it computes the square root of the region's area (if, for example, the Region is square and the viewpoint is directly above the Region, and the Region is not tilted, this measurement is equal to the width of the projected Region). If this measurement falls within the limits defined by minLodPixels and maxLodPixels (and if the LatLonAltBox is in view), the region is active. If this limit is not reached, the associated geometry is considered to be too far from the user's viewpoint to be drawn.
*/
public function getMinLodPixels() : Float;

/*
Specifies measurement in screen pixels that represents the minimum limit of the visibility range for a given Region. Google Earth calculates the size of the region when projected onto screen space. Then it computes the square root of the region's area (if, for example, the Region is square and the viewpoint is directly above the Region, and the Region is not tilted, this measurement is equal to the width of the projected Region). If this measurement falls within the limits defined by minLodPixels and maxLodPixels (and if the LatLonAltBox is in view), the region is active. If this limit is not reached, the associated geometry is considered to be too far from the user's viewpoint to be drawn.
*/
public function setMinLodPixels( minLodPixels : Float ) : Void;

/*
Measurement in screen pixels that represents the maximum limit of the visibility range for a given Region. A value of -1, the default, indicates "active to infinite size."
*/
public function getMaxLodPixels() : Float;

/*
Measurement in screen pixels that represents the maximum limit of the visibility range for a given Region. A value of -1, the default, indicates "active to infinite size."
*/
public function setMaxLodPixels( maxLodPixels : Float ) : Void;

/*
Distance over which the geometry fades, from fully opaque to fully transparent. This ramp value, expressed in screen pixels, is applied at the minimum end of the LOD (visibility) limits.
*/
public function getMinFadeExtent() : Float;

/*
Distance over which the geometry fades, from fully opaque to fully transparent. This ramp value, expressed in screen pixels, is applied at the minimum end of the LOD (visibility) limits.
*/
public function setMinFadeExtent( minFadeExtent : Float ) : Void;

/*
Distance over which the geometry fades, from fully transparent to fully opaque. This ramp value, expressed in screen pixels, is applied at the maximum end of the LOD (visibility) limits.
*/
public function getMaxFadeExtent() : Float;

/*
Distance over which the geometry fades, from fully transparent to fully opaque. This ramp value, expressed in screen pixels, is applied at the maximum end of the LOD (visibility) limits.
*/
public function setMaxFadeExtent( maxFadeExtent : Float ) : Void;

}