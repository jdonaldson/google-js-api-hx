/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation

  This class extends MVCObject.

*/
package google.maps;
import js.Dom;

extern class MVCArray<Dynamic> extends MVCObject, implements ArrayAccess<Dynamic>{

/*
A mutable MVC Array.
*/
public function new(?array:Array<Dynamic>) : Void;

/*
Insert an element at the specified index.
*/
public function insertAt(i:Int, elem:Dynamic) : Void;

/*
Returns the number of elements in this array.
*/
public function getLength() : Float;

/*
Remove an element from the specified index.
*/
public function removeAt(i:Int) : Dynamic;

/*
Get an element at the specified index.
*/
public function getAt(i:Int) : Dynamic;

/*
Adds one element to the end of the array and returns the new length of the
array.
*/
public function push(elem:Dynamic) : Float;

/*
Removes the last element of the array and returns that element.
*/
public function pop() : Dynamic;

/*
Iterate over each element, calling the provided callback.
The callback is called for each element like: callback(element, index).
*/
public function forEach(_callback:Dynamic-> Int->Void) : Void;

/*
Set an element at the specified index.
*/
public function setAt(i:Int, elem:Dynamic) : Void;


}
