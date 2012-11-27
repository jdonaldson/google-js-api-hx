/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:35 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlLink  extends KmlObject{
/*
A URL (either an HTTP address or a local file specification). When the parent of Link is a NetworkLink, href is a KML file. When the parent of Link is a Model, href is a COLLADA file. When the parent of Link is an Overlay, href is an image.
*/
public static function getHref() : String;

/*
A URL (either an HTTP address or a local file specification). When the parent of Link is a NetworkLink, href is a KML file. When the parent of Link is a Model, href is a COLLADA file. When the parent of Link is an Overlay, href is an image.
*/
public static function setHref( href : String ) : Void;

/*
Specifies to use a time-based refresh mode.
See also:GEPlugin.REFRESH_ON_CHANGE 
GEPlugin.REFRESH_ON_INTERVAL 
GEPlugin.REFRESH_ON_EXPIRE
*/
public static function getRefreshMode() : KmlRefreshModeEnum;

/*
Specifies to use a time-based refresh mode.
See also:GEPlugin.REFRESH_ON_CHANGE 
GEPlugin.REFRESH_ON_INTERVAL 
GEPlugin.REFRESH_ON_EXPIRE
*/
public static function setRefreshMode( refreshMode : KmlRefreshModeEnum ) : Void;

/*
Indicates to refresh the file every n seconds.
*/
public static function getRefreshInterval() : Float;

/*
Indicates to refresh the file every n seconds.
*/
public static function setRefreshInterval( refreshInterval : Float ) : Void;

/*
Specifies how the link is refreshed when the viewport changes.
See also:GEPlugin.VIEW_REFRESH_NEVER 
GEPlugin.VIEW_REFRESH_ON_STOP 
GEPlugin.VIEW_REFRESH_ON_REGION
*/
public static function getViewRefreshMode() : KmlViewRefreshModeEnum;

/*
Specifies how the link is refreshed when the viewport changes.
See also:GEPlugin.VIEW_REFRESH_NEVER 
GEPlugin.VIEW_REFRESH_ON_STOP 
GEPlugin.VIEW_REFRESH_ON_REGION
*/
public static function setViewRefreshMode( viewRefreshMode : KmlViewRefreshModeEnum ) : Void;

/*
Specifies how the link is refreshed when the camera changes.
*/
public static function getViewRefreshTime() : Float;

/*
Specifies how the link is refreshed when the camera changes.
*/
public static function setViewRefreshTime( viewRefreshTime : Float ) : Void;

/*
Scales the BBOX parameters before sending them to the server. A value less than 1 specifies to use less than the full view (screen). A value greater than 1 specifies to fetch an area that extends beyond the edges of the current view.
*/
public static function getViewBoundScale() : Float;

/*
Scales the BBOX parameters before sending them to the server. A value less than 1 specifies to use less than the full view (screen). A value greater than 1 specifies to fetch an area that extends beyond the edges of the current view.
*/
public static function setViewBoundScale( viewBoundScale : Float ) : Void;

/*
Specifies the format of the query string that is appended to the Link's href before the file is fetched.(If the href specifies a local file, this element is ignored.)
*/
public static function getViewFormat() : String;

/*
Specifies the format of the query string that is appended to the Link's href before the file is fetched.(If the href specifies a local file, this element is ignored.)
*/
public static function setViewFormat( viewFormat : String ) : Void;

}