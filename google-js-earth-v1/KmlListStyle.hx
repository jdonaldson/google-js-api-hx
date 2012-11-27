/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:37 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlListStyle  extends KmlObject{
/*
Background color for the Snippet.
*/
public function getBgColor() : KmlColor;

/*
Maximum number of lines of text for the Snippet.
*/
public function getMaxSnippetLines() : Int;

/*
Maximum number of lines of text for the Snippet.
*/
public function setMaxSnippetLines( maxSnippetLines : Int ) : Void;

/*
Specifies how a feature should be displayed in a list view.
*/
public function getListItemType() : KmlListItemTypeEnum;

}