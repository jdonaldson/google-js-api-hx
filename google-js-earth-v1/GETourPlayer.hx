/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:35 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class GETourPlayer {
/*
Enters the given tour object, exiting any other currently active tour. This method does not automatically begin playing the tour.
If the argument is null, then any currently active tour is exited and normal globe navigation is enabled.
*/
public function setTour( tour : KmlTour ) : Void;

/*
Plays the currently active tour.
*/
public function play() : Void;

/*
Pauses the currently active tour.
*/
public function pause() : Void;

/*
Resets the currently active tour, stopping playback and rewinding to the start of the tour.
*/
public function reset() : Void;

/*
The current elapsed playing time of the active tour, in seconds.
*/
public function getCurrentTime() : Float;

/*
The current elapsed playing time of the active tour, in seconds.
*/
public function setCurrentTime( currentTime : Float ) : Void;

/*
The total duration of the active tour, in seconds. If no tour is loaded, the behavior of this method is undefined.
*/
public function getDuration() : Float;

}