/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:36 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GEHtmlDivBalloon  extends GEHtmlBalloon{
/*
An HTMLDivElement to be used as the contents of the balloon. When the balloon is shown, the HTMLDivElement is attached to the balloon element in the web page. You can manipulate this balloon using ordinary HTML DOM techniques.
*/
public function getContentDiv() : ISupports;

/*
An HTMLDivElement to be used as the contents of the balloon. When the balloon is shown, the HTMLDivElement is attached to the balloon element in the web page. You can manipulate this balloon using ordinary HTML DOM techniques.
*/
public function setContentDiv( contentDiv : ISupports ) : Void;

}