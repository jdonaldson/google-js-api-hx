/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:36 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEHtmlStringBalloon  extends GEHtmlBalloon{
/*
You can include any HTML using the contentString property. When the balloon is visible, the content specified in contentString property, is inserted directly into the balloon element in the web page.
*/
public function getContentString() : String;

/*
You can include any HTML using the contentString property. When the balloon is visible, the content specified in contentString property, is inserted directly into the balloon element in the web page.
*/
public function setContentString( contentString : String ) : Void;

}