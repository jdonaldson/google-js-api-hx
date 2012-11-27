/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:36 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEPlugin {
/*
Parse a string of KML and return a handle to the root of the KML object structure that was created.
*/
public function parseKml( kml : String ) : KmlObject;

/*
Creates a placemark on the globe. A Placemark is a feature with associated Geometry. A Placemark with a Point has an icon associated with it that marks a point on the Earth in the 3D viewer. (In the Google Earth 3D viewer, a Point Placemark is the only object you can click or roll over. Other Geometry objects do not have an icon in the 3D viewer. To allow the user to click in the 3D viewer, you would need to create a MultiGeometry object that contains both a Point and the other Geometry object.) Parameters:
  idID of placemark.
*/
public function createPlacemark( id : String ) : KmlPlacemark;

/*
Creates a point on the globe. Specifies the geographic location defined by longitude, latitude, and (optional) altitude. Parameters:
  idID of new location
*/
public function createPoint( id : String ) : KmlPoint;

/*
Creates a line string on Google Earth. Parameters:
  idlocation of the new string.
*/
public function createLineString( id : String ) : KmlLineString;

/*
Creates a folder. A KMLFolder is used to arrange other features hierarchically (Folders, Placemarks, NetworkLinks, or Overlays). A feature is visible only if it and all its ancestors are visible. Parameters:
  idID of the new folder
*/
public function createFolder( id : String ) : KmlFolder;

/*
Creates level of detail (LOD). LOD describes the size of the projected region on the screen that is required in order for the region to be considered active. Also specifies the size of the pixel ramp used for fading in (from transparent to opaque) and fading out (from opaque to transparent). Parameters:
  idID of the new LOD.
*/
public function createLod( id : String ) : KmlLod;

/*
Creates a LatLonBox, a bounding box that describes an area of interest defined by geographic coordinates and altitudes. Parameters:
  idID of the new LatLonBox
*/
public function createLatLonBox( id : String ) : KmlLatLonBox;

/*
Creates a LatLonAltBox, a bounding box that describes an area of interest defined by geographic coordinates and altitudes. Parameters:
  idID of the new LatLonAltBox
*/
public function createLatLonAltBox( id : String ) : KmlLatLonAltBox;

/*
Creates a Document. A Document is a container for features and styles. Parameters:
  idID of the new KML document.
*/
public function createDocument( id : String ) : KmlDocument;

/*
Creates a Region in Google Earth. A Region contains a bounding box that describes an area of interest defined by geographic coordinates and altitudes. Parameters:
  idID of the new KML region.
*/
public function createRegion( id : String ) : KmlRegion;

/*
Specifies the exact coordinates of the Model's origin in latitude, longitude, and altitude. Latitude and longitude measurements are standard lat-lon projection with WGS84 datum. Altitude is distance above the earth's surface, in meters, and is interpreted according to altitudeMode. Parameters:
  idID of the new KML location.
*/
public function createLocation( id : String ) : KmlLocation;

/*
Sets the rotation of a 3D model's coordinate system to position the object in Google Earth. Parameters:
  idID of the new KMLOrientation.
*/
public function createOrientation( id : String ) : KmlOrientation;

/*
Sets the scale of a model along the x, y, and z axes in the model's coordinate space. Parameters:
  idID of KmlScale.
*/
public function createScale( id : String ) : KmlScale;

/*
Creates a model. A model is a 3D object described in a COLLADA file. COLLADA files have a .dae file extension. Models are created in their own coordinate space and then located, positioned, and scaled in Google Earth. Parameters:
  idID of the new KmlModel.
*/
public function createModel( id : String ) : KmlModel;

/*
A Style defines an addressable style group that can be referenced by StyleMaps and features. Parameters:
  idID of the new KMLStyle object.
*/
public function createStyle( id : String ) : KmlStyle;

/*
Creates a LinearRing. A LinearRing defines a closed line string, typically the outer boundary of a Polygon. Optionally, a LinearRing can also be used as the inner boundary of a Polygon to create holes in the Polygon. Parameters:
  idID of the new KmlLinearRing.
*/
public function createLinearRing( id : String ) : KmlLinearRing;

/*
Creates a Polygon. A Polygon is defined by an outer boundary and 0 or more inner boundaries. Parameters:
  idID of the new Polygon.
*/
public function createPolygon( id : String ) : KmlPolygon;

/*
Creates an Icon. An icon defines an image associated with an Icon style or overlay. Parameters:
  idID of the new KmlIcon.
*/
public function createIcon( id : String ) : KmlIcon;

/*
Creates a Link. A Link specifies the location of KML files fetched by network links, image files used in any overlay, or model files used with the Model object. Parameters:
  idID of the new KmlLink.
*/
public function createLink( id : String ) : KmlLink;

/*
Creates a GroundOverlay. A GroundOverlay draws an image overlay draped onto the terrain. Parameters:
  idID of the new KmlGroundOverlay.
*/
public function createGroundOverlay( id : String ) : KmlGroundOverlay;

/*
Creates a NetworkLink. A NetworkLink references a KML file or KMZ archive on a local or remote network. Parameters:
  idID of the new KmlNetworkLink.
*/
public function createNetworkLink( id : String ) : KmlNetworkLink;

/*
Creates a ScreenOverlay. A ScreenOverlay draws an image overlay fixed to the screen. Parameters:
  idID of the new KmlScreenOverlay.
*/
public function createScreenOverlay( id : String ) : KmlScreenOverlay;

/*
Creates a container for one or more geometry primitives associated with the same feature. Parameters:
  idID of the new KmlMultiGeometry container.
*/
public function createMultiGeometry( id : String ) : KmlMultiGeometry;

/*
Creates a StyleMap. A StyleMap maps between two different icon styles. Typically, a StyleMap is used to provide separate normal and highlighted styles for a Placemark, so that the highlighted version appears when the user mouses over the icon in Google Earth.
*/
public function createStyleMap( id : String ) : KmlStyleMap;

/*
Creates a new LookAt. A LookAt element positions the camera view in relation to an object that is being viewed.
*/
public function createLookAt( id : String ) : KmlLookAt;

/*
Creates a new Camera. This element positions the camera relative to the Earth's surface and defines the view direction.
*/
public function createCamera( id : String ) : KmlCamera;

/*
Creates a Feature balloon. Parameters:
  idID of GEFeatureBalloon.
*/
public function createFeatureBalloon( id : String ) : GEFeatureBalloon;

/*
Creates an HTML string balloon. Parameters:
  idID of GEHtmlStringBalloon.
*/
public function createHtmlStringBalloon( id : String ) : GEHtmlStringBalloon;

/*
Creates an Html Div Balloon. Parameters:
  idID of GEHtmlDivBalloon.
*/
public function createHtmlDivBalloon( id : String ) : GEHtmlDivBalloon;

/*
Returns the currently active balloon, or null.
*/
public function getBalloon() : GEAbstractBalloon;

/*
Sets the given balloon as the active balloon, replacing any existing active balloon. If the given feature is visible, then the balloon is displayed. Otherwise, the balloon is hidden.
If the argument is null, then any existing active balloon will be hidden.
*/
public function setBalloon( newActiveBalloon : GEAbstractBalloon ) : Void;

/*
Used for debugging purposes; if this value is not equal to the value returned by getPluginVersion then there is a misconfiguration on the end user's system. This check is automatically done during plugin instantiation.
*/
public function getEarthVersion() : String;

/*
The version of the Google Earth Plug-in installed on the end user's machine.
*/
public function getPluginVersion() : String;

/*
The version of the JavaScript API that the Google Earth Plug-in installed on the end user's machine is capable of interfacing with.
*/
public function getApiVersion() : String;

/*
The options used to manipulate the behavior of the Google Earth plugin.
*/
public function getOptions() : GEOptions;

/*
Controls the window options.
*/
public function getWindow() : GEWindow;

/*
Controls the globe behavior.
*/
public function getGlobe() : GEGlobe;

/*
Displays the dawn to dusk views.
*/
public function getSun() : GESun;

/*
Controls built-in layer behavior.
*/
public function getLayerRoot() : KmlLayerRoot;

/*
Controls the plugin viewport.
*/
public function getView() : GEView;

/*
Controls the navigation controls on the globe.
*/
public function getNavigationControl() : GENavigationControl;

/*
The top-level features currently in the Earth object.
*/
public function getFeatures() : GEFeatureContainer;

/*
Exposes functionality for interacting with KML tours.
*/
public function getTourPlayer() : GETourPlayer;

/*
Exposes functionality for interacting with photo overlays.
*/
public function getPhotoOverlayViewer() : GEPhotoOverlayViewer;

/*
Returns a number between 0 and 100 (inclusive) that indicates the progress of the streaming of imagery for the current view.
A value of 100 means that the imagery is completely streamed in.
*/
public function getStreamingPercent() : Float;

/*
Event fired when Earth has finished rendering the viewport. This event will be called many times in succession when the viewport is changing. Add a listener for this event and make incremental changes to the viewport for smooth animation.
*/
public function frameend() : Void;

/*
Event fired when the current balloon is closed.
*/
public function balloonclose() : Void;

/*
Specifies that altitudes are at ground level. For Ground overlays, this means that the image will be draped over the terrain.
*/
public var ALTITUDE_CLAMP_TO_GROUND : KmlAltitudeModeEnum;

/*
Specifies that altitudes are to be interpreted as meters above or below ground level (i.e. the elevation of the terrain at the location).
*/
public var ALTITUDE_RELATIVE_TO_GROUND : KmlAltitudeModeEnum;

/*
Specifies that altitudes are to be interpreted as meters above or below sea level, regardless of the actual elevation of the terrain beneath the object. For example, if you set the altitude of an object to 10 meters with an absolute altitude mode, the object will appear to be at ground level if the terrain beneath is also 10 meters above sea level. If the terrain is 3 meters above sea level, the object will appear elevated above the terrain by 7 meters. If, on the other hand, the terrain is 15 meters above sea level, the object may be completely invisible.
*/
public var ALTITUDE_ABSOLUTE : KmlAltitudeModeEnum;

/*
Specifies that altitudes are at sea floor level.
*/
public var ALTITUDE_CLAMP_TO_SEA_FLOOR : KmlAltitudeModeEnum;

/*
Specifies that altitudes are to be interpreted as meters above sea floor (i.e. the elevation of the sea floor at the location).
*/
public var ALTITUDE_RELATIVE_TO_SEA_FLOOR : KmlAltitudeModeEnum;

/*
Refresh when the file is loaded and whenever the Link parameters change. This refresh mode is the default.
*/
public var REFRESH_ON_CHANGE : KmlRefreshModeEnum;

/*
Refresh every n seconds (specified in refreshInterval).
*/
public var REFRESH_ON_INTERVAL : KmlRefreshModeEnum;

/*
Refresh when the expiration time is reached. If a fetched file has a NetworkLinkControl, the expires time takes precedence over expiration times specified in HTTP headers. If no expires time is specified, the HTTP max-age header is used (if present). If max-age is not present, the Expires HTTP header is used (if present).
*/
public var REFRESH_ON_EXPIRE : KmlRefreshModeEnum;

/*
Ignore changes in the view. Also ignore viewFormat parameters, if any. This view refresh mode is the default.
*/
public var VIEW_REFRESH_NEVER : KmlViewRefreshModeEnum;

/*
Refresh n seconds after movement stops, where n is specified in viewRefreshTime.
*/
public var VIEW_REFRESH_ON_STOP : KmlViewRefreshModeEnum;

/*
Refresh only when the feature's Region becomes active.
*/
public var VIEW_REFRESH_ON_REGION : KmlViewRefreshModeEnum;

/*
Screen coordinates are to be interpreted as a fraction of an item, like an image or Google Earth window.
*/
public var UNITS_FRACTION : KmlUnitsEnum;

/*
Screen coordinates are to be interpreted as pixels from the left or bottom edge.
*/
public var UNITS_PIXELS : KmlUnitsEnum;

/*
Screen coordinates are to be interpreted as pixels from the top or right edge.
*/
public var UNITS_INSET_PIXELS : KmlUnitsEnum;

/*
Apply no color mode effect, i.e. use the base color as is.
*/
public var COLOR_NORMAL : KmlColorModeEnum;

/*
Apply a random linear scale to the base color. See the KML <colorMode> documentation for more details.
*/
public var COLOR_RANDOM : KmlColorModeEnum;

/*
Inherit the color mode from ancestor styles.
*/
public var COLOR_INHERIT : KmlColorModeEnum;

/*
The Earth map type, used with GEOptions' setMapType
*/
public var MAP_TYPE_EARTH : GEMapTypeEnum;

/*
The Sky map type, used with GEOptions' setMapType
*/
public var MAP_TYPE_SKY : GEMapTypeEnum;

/*
Hide the navigation control.
*/
public var VISIBILITY_HIDE : GEVisibilityEnum;

/*
Show the navigation control always.
*/
public var VISIBILITY_SHOW : GEVisibilityEnum;

/*
Automatically show or hide the navigation control depending on user interaction.
*/
public var VISIBILITY_AUTO : GEVisibilityEnum;

/*
Specifies that fly-to should happen immediately, without a smooth transition.
*/
public var SPEED_TELEPORT : Float;

/*
The Layer ID of the terrain layer. Use as an argument to getLayerById() or enableLayerById().
*/
public var LAYER_TERRAIN : String;

/*
The Layer ID of the roads layer. Use as an argument to getLayerById() or enableLayerById().
*/
public var LAYER_ROADS : String;

/*
The Layer ID of the photorealistic buildings layer. Use as an argument to getLayerById() or enableLayerById().
*/
public var LAYER_BUILDINGS : String;

/*
The Layer ID of the low resolution (gray) buildings layer. Use as an argument to getLayerById() or enableLayerById(). Note that as photorealistic buildings continue to be created and added to the LAYER_BUILDINGS layer, the low-resolution version of those buildings will be removed from this layer. This layer will therefore change over time.
*/
public var LAYER_BUILDINGS_LOW_RESOLUTION : String;

/*
The Layer ID of the borders layer. Use as an argument to getLayerById() or enableLayerById().
*/
public var LAYER_BORDERS : String;

/*
When using the GEView.hitTest method, this mode samples the globe (the earth's sphere at altitude 0, without terrain or buildings).
*/
public var HIT_TEST_GLOBE : GEHitTestModeEnum;

/*
When using the GEView.hitTest method, this mode samples the earth's terrain (the ground surface, including variations in altitude).
*/
public var HIT_TEST_TERRAIN : GEHitTestModeEnum;

/*
When using the GEView.hitTest method, this mode samples 3D buildings.
*/
public var HIT_TEST_BUILDINGS : GEHitTestModeEnum;

/*
The feature's visibility is tied to its list item's checkbox state.
*/
public var LIST_ITEM_CHECK : KmlListItemTypeEnum;

/*
When specified for a folder, document or network link, prevents all items from being made visible at once—that is, the user can turn all children off but cannot turn them all on at the same time. This setting is useful for containers or network links containing large amounts of data.
*/
public var LIST_ITEM_CHECK_OFF_ONLY : KmlListItemTypeEnum;

/*
Use a normal checkbox for visibility but do not display children in a list view. The item's checkbox should allows the user to toggle visibility of the child objects in the viewport.
*/
public var LIST_ITEM_CHECK_HIDE_CHILDREN : KmlListItemTypeEnum;

/*
When specified for a container (a folder or a document), only one of the container's items should be visible at a time.
*/
public var LIST_ITEM_RADIO_FOLDER : KmlListItemTypeEnum;

/*
The large navigation control type, used with GENavigationControl.setControlType().
*/
public var NAVIGATION_CONTROL_LARGE : GENavigationControlEnum;

/*
The small navigation control type, used with GENavigationControl.setControlType().
*/
public var NAVIGATION_CONTROL_SMALL : GENavigationControlEnum;

}