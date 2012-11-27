/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:40 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlEvent {
/*
Cancels the default action of the event. For example, calling this method in a placemark click handler prevents the placemark's default balloon from popping up.
*/
public function preventDefault() : Void;

/*
Prevents event propagation. For example, if click event handlers are set up on both the GEGlobe and GEWindow objects, and stopPropagation is called in the GEGlobe click event handler, the GEWindow event handler will not be triggered when the globe is clicked.
*/
public function stopPropagation() : Void;

/*
The object to which the KMLEvent was originally dispatched.
*/
public function getTarget() : GEEventEmitter;

/*
The target whose event listeners are currently being processed.
*/
public function getCurrentTarget() : GEEventEmitter;

/*
The current stage of the flow of events.
*/
public function getEventPhase() : GEEventPhaseEnum;

/*
Indicates whether or not an event is a bubbling event.
*/
public function getBubbles() : Bool;

/*
Indicates whether the event can be cancelled. Note:Currently, cancelable has no effect.
*/
public function getCancelable() : Bool;

}