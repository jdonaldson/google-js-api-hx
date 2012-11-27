/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 09 15:02:36 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlListStyle  extends KmlObject{
/*
Background color for the Snippet.
*/
public static function getBgColor() : KmlColor;

/*
Maximum number of lines of text for the Snippet.
*/
public static function getMaxSnippetLines() : Int;

/*
Maximum number of lines of text for the Snippet.
*/
public static function setMaxSnippetLines( maxSnippetLines : Int ) : Void;

/*
Specifies how a feature should be displayed in a list view.
*/
public static function getListItemType() : KmlListItemTypeEnum;

}