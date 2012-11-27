/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:34 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEAbstractBalloon {
/*
The ID of the balloon.
*/
public function getId() : String;

/*
The ID of the balloon.
*/
public function setId( id : String ) : Void;

/*
Determines what the balloon is attached to.
*/
public function getFeature() : KmlFeature;

/*
Determines what the balloon is attached to.
*/
public function setFeature( feature : KmlFeature ) : Void;

/*
Minimum width of the balloon.
*/
public function getMinWidth() : Int;

/*
Minimum width of the balloon.
*/
public function setMinWidth( minWidth : Int ) : Void;

/*
Minimum height of the balloon.
*/
public function getMinHeight() : Int;

/*
Minimum height of the balloon.
*/
public function setMinHeight( minHeight : Int ) : Void;

/*
Maximum width of the balloon.
*/
public function getMaxWidth() : Int;

/*
Maximum width of the balloon.
*/
public function setMaxWidth( maxWidth : Int ) : Void;

/*
Maximum height of the balloon.
*/
public function getMaxHeight() : Int;

/*
Maximum height of the balloon.
*/
public function setMaxHeight( maxHeight : Int ) : Void;

/*
When true, the balloon frame is displayed with a button that the user can click to close the balloon. When false, the balloon frame is just a plain frame.
Default is true.
*/
public function getCloseButtonEnabled() : Bool;

/*
When true, the balloon frame is displayed with a button that the user can click to close the balloon. When false, the balloon frame is just a plain frame.
Default is true.
*/
public function setCloseButtonEnabled( closeButtonEnabled : Bool ) : Void;

}