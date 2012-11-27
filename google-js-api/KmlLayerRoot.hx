/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:45 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlLayerRoot  extends KmlFolder{
/*
Returns the layer based on the layer's ID.
*/
public static function getLayerById( id : String ) : KmlFolder;

/*
Enables a layer based on its ID. Parameters:
  id ID of layer. See the GEPlugin object reference for possible values. visibility Specifies whether the feature is drawn in the 3D viewer when it is initially loaded. In order for a feature to be visible, visibility must also be set to 1.
*/
public static function enableLayerById( id : String, visibility : Bool ) : Void;

/*
Returns the drawing order for this database.
*/
public static function getDrawOrder() : Int;

/*
Defines the drawing order for databases. Drawing order is lowest to highest. Google Earth Enterprise customers can add a side database and set the drawOrder to be either before or after that of the main database. Side databases default to a drawing order of 0.
*/
public static function setDrawOrder( drawOrder : Int ) : Void;

}