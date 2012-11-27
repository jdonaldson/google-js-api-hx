/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:31 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GENavigationControl {
/*
Specifies whether the control is always visible, always hidden, or visible only when the user intends to use the control.
See also:GEPlugin.VISIBILITY_SHOW 
GEPlugin.VISIBILITY_HIDE 
GEPlugin.VISIBILITY_AUTO
*/
public static function getVisibility() : GEVisibilityEnum;

/*
Specifies whether the control is always visible, always hidden, or visible only when the user intends to use the control.
See also:GEPlugin.VISIBILITY_SHOW 
GEPlugin.VISIBILITY_HIDE 
GEPlugin.VISIBILITY_AUTO
*/
public static function setVisibility( visibility : GEVisibilityEnum ) : Void;

/*
Returns the currently specified navigation control type.
*/
public static function getControlType() : GENavigationControlEnum;

/*
Specifies the size of the navigation control. See also:GEPlugin.NAVIGATION_CONTROL_LARGE 
GEPlugin.NAVIGATION_CONTROL_SMALL
*/
public static function setControlType( controlType : GENavigationControlEnum ) : Void;

/*
The position of the navigation controls in Google Earth
*/
public static function getScreenXY() : KmlVec2;

}