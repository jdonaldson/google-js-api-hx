/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:29 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEAbstractBalloon {
/*
The ID of the balloon.
*/
public static function getId() : String;

/*
The ID of the balloon.
*/
public static function setId( id : String ) : Void;

/*
Determines what the balloon is attached to.
*/
public static function getFeature() : KmlFeature;

/*
Determines what the balloon is attached to.
*/
public static function setFeature( feature : KmlFeature ) : Void;

/*
Minimum width of the balloon.
*/
public static function getMinWidth() : Int;

/*
Minimum width of the balloon.
*/
public static function setMinWidth( minWidth : Int ) : Void;

/*
Minimum height of the balloon.
*/
public static function getMinHeight() : Int;

/*
Minimum height of the balloon.
*/
public static function setMinHeight( minHeight : Int ) : Void;

/*
Maximum width of the balloon.
*/
public static function getMaxWidth() : Int;

/*
Maximum width of the balloon.
*/
public static function setMaxWidth( maxWidth : Int ) : Void;

/*
Maximum height of the balloon.
*/
public static function getMaxHeight() : Int;

/*
Maximum height of the balloon.
*/
public static function setMaxHeight( maxHeight : Int ) : Void;

/*
When true, the balloon frame is displayed with a button that the user can click to close the balloon. When false, the balloon frame is just a plain frame.
Default is true.
*/
public static function getCloseButtonEnabled() : Bool;

/*
When true, the balloon frame is displayed with a button that the user can click to close the balloon. When false, the balloon frame is just a plain frame.
Default is true.
*/
public static function setCloseButtonEnabled( closeButtonEnabled : Bool ) : Void;

}