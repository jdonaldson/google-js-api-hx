/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:36 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlLink  extends KmlObject{
/*
A URL (either an HTTP address or a local file specification). When the parent of Link is a NetworkLink, href is a KML file. When the parent of Link is a Model, href is a COLLADA file. When the parent of Link is an Overlay, href is an image.
*/
public function getHref() : String;

/*
A URL (either an HTTP address or a local file specification). When the parent of Link is a NetworkLink, href is a KML file. When the parent of Link is a Model, href is a COLLADA file. When the parent of Link is an Overlay, href is an image.
*/
public function setHref( href : String ) : Void;

/*
Specifies to use a time-based refresh mode.
See also:GEPlugin.REFRESH_ON_CHANGE 
GEPlugin.REFRESH_ON_INTERVAL 
GEPlugin.REFRESH_ON_EXPIRE
*/
public function getRefreshMode() : KmlRefreshModeEnum;

/*
Specifies to use a time-based refresh mode.
See also:GEPlugin.REFRESH_ON_CHANGE 
GEPlugin.REFRESH_ON_INTERVAL 
GEPlugin.REFRESH_ON_EXPIRE
*/
public function setRefreshMode( refreshMode : KmlRefreshModeEnum ) : Void;

/*
Indicates to refresh the file every n seconds.
*/
public function getRefreshInterval() : Float;

/*
Indicates to refresh the file every n seconds.
*/
public function setRefreshInterval( refreshInterval : Float ) : Void;

/*
Specifies how the link is refreshed when the viewport changes.
See also:GEPlugin.VIEW_REFRESH_NEVER 
GEPlugin.VIEW_REFRESH_ON_STOP 
GEPlugin.VIEW_REFRESH_ON_REGION
*/
public function getViewRefreshMode() : KmlViewRefreshModeEnum;

/*
Specifies how the link is refreshed when the viewport changes.
See also:GEPlugin.VIEW_REFRESH_NEVER 
GEPlugin.VIEW_REFRESH_ON_STOP 
GEPlugin.VIEW_REFRESH_ON_REGION
*/
public function setViewRefreshMode( viewRefreshMode : KmlViewRefreshModeEnum ) : Void;

/*
Specifies how the link is refreshed when the camera changes.
*/
public function getViewRefreshTime() : Float;

/*
Specifies how the link is refreshed when the camera changes.
*/
public function setViewRefreshTime( viewRefreshTime : Float ) : Void;

/*
Scales the BBOX parameters before sending them to the server. A value less than 1 specifies to use less than the full view (screen). A value greater than 1 specifies to fetch an area that extends beyond the edges of the current view.
*/
public function getViewBoundScale() : Float;

/*
Scales the BBOX parameters before sending them to the server. A value less than 1 specifies to use less than the full view (screen). A value greater than 1 specifies to fetch an area that extends beyond the edges of the current view.
*/
public function setViewBoundScale( viewBoundScale : Float ) : Void;

/*
Specifies the format of the query string that is appended to the Link's href before the file is fetched.(If the href specifies a local file, this element is ignored.)
*/
public function getViewFormat() : String;

/*
Specifies the format of the query string that is appended to the Link's href before the file is fetched.(If the href specifies a local file, this element is ignored.)
*/
public function setViewFormat( viewFormat : String ) : Void;

}