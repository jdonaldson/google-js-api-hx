/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation



*/
package google.maps;
import js.Dom;

extern class MVCObject {

/*
Base class implementing KVO.
*/
public function new() : Void;

/*
Generic handler for state changes.
Override this in derived classes to handle arbitrary state changes.
*/
public function changed(key:String) : Void;

/*
Binds a View to a Model.
*/
public function bindTo(key:String, target:MVCObject, ?targetKey:String, ?noNotify:Bool) : Void;

/*
Removes a binding.  Unbinding will set the unbound property to the current
value.  The object will not be notified, as the value has not changed.
*/
public function unbind(key:String) : Void;

/*
Removes all bindings.
*/
public function unbindAll() : Void;

/*
Sets a value.
*/
public function set(key:String, value:Dynamic) : Void;

/*
Gets a value.
*/
public function get(key:String) : Dynamic;

/*
Sets a collection of key-value pairs.
*/
public function setValues(values:Dynamic) : Void;

/*
Notify all observers of a change on this property.
This notifies both objects that are bound to the object's property as well as
the object that it is bound to.
*/
public function notify(key:String) : Void;


}
