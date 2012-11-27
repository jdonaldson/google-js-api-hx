/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Thu Jul 15 16:37:44 -0700 2010
Based on original Google JS API documentation



*/
package google.maps;
import js.Dom;

extern class Event {

/*
Removes the given listener, which should have been returned by
eventAddListener above.
*/
public static function removeListener(listener:MapsEventListener) : Void;

/*
Like eventAddListener, but the handler removes itself after handling the
first event.
*/
public static function addListenerOnce(instance:Dynamic, eventName:String, handler:Dynamic) : MapsEventListener;

/*
Wrapper around addDomListener that removes the listener after the first
event.
*/
public static function addDomListenerOnce(instance:Dynamic, eventName:String, handler:Dynamic) : MapsEventListener;

/*
Adds the given listener function to the given event name for
the given object instance. Returns an identifier for this listener
that can be used with eventRemoveListener().
*/
public static function addListener(instance:Dynamic, eventName:String, handler:Dynamic) : MapsEventListener;

/*
Removes all listeners for the given event for the given instance.
*/
public static function clearListeners(instance:Dynamic, eventName:String) : Void;

/*
Triggers the given event. All arguments after eventName are passed
as arguments to the listeners.
*/
public static function trigger(instance:Dynamic, eventName:String, var_args:Dynamic) : Void;

/*
Cross browser event handler registration. This listener is removed
by calling eventRemoveListener(handle) for the handle that is
returned by this function.
*/
public static function addDomListener(instance:Dynamic, eventName:String, handler:Dynamic) : MapsEventListener;

/*
Removes all listeners for all events for the given instance.
*/
public static function clearInstanceListeners(instance:Dynamic) : Void;


}
