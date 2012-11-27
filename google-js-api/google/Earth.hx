package google;
import js.Dom;
import GEPlugin;
extern class Earth {
private static function __init__() : Void untyped {
	try{google.Earth = google.earth;}
}
/*
Whether or not the Google Earth Browser Plug-in and API are supported on the current browser and operating system.
*/
public static function isSupported() : Bool;

/*
Whether or not the Google Earth Browser Plug-in is currently installed on the user's machine.
Note: if the plug-in is not installed, the user will be presented with a 'download' link upon calls to google.earth.createInstance().
*/
public static function isInstalled() : Bool;

/*
Attempts to create an instance of the plugin under the given web browser HTML DOM node. Upon success, calls the function passed in as the initCallback argument. Upon failure, calls the function passed in as the failureCallback argument and displays an error message to the user in place of the plug-in object.
Note: The HTML DOM must be loaded before this function can be called. Common usage is to call this function upon the <body>'s load event, or to use google.setOnLoadCallback.
Parameters:
  domNode Either the string ID of the HTML DOM element or the DOM element itself (usually a <div>) that will contain the plug-in instance or error message. initCallback A function that will be called with an instance of GEPlugin as the first parameter upon successful instantiation of the plugin. failureCallback A function that will be called upon failure to instantiate the plugin. The user will also be shown a graphical error description page in place of the plugin. options (optional) A JavaScript object literal (i.e, { option1: 'value1', option2: 'value2' }) containing extra initialization options. The following options are recognized: database 

The URL of an alternative Earth Enterprise database to connect to instead of the default database. 
Note: Certain changes may be required to your Google Earth Server configuration before Google Earth Plugin instances will be able to connect to it using this method. Google Earth Server versions 3.2 and higher are already pre-configured for connectivity with the plugin. Contact Google Earth Enterprise support for more details. 
Note: Keep in mind the Google Earth API Terms of Service while using this parameter.   
language 

The language code specifying the language to use for road and border labels, Terms of Use text, and error messages. Supported language codes are listed in the Google Maps API Coverage document. Note that we often update the languages that we support, so this list may not be exhaustive.
*/
public static function createInstance( domNode : Dynamic, initCallback : Dynamic, failureCallback : Dynamic, ?options : Dynamic ) : Void;

/*
Attaches a listener to a given object for a specific event; when the event occurs on the object, the given callback is invoked.
Parameters:
  targetObject The object on which to listen to the event. eventID The event string (i.e. 'click', 'mouseover', 'frameend', etc.) identifying the event to listen for. See the individual class reference pages for available events. listenerCallback A function that will be called with an instance of KmlEvent when the event occurs on the object. useCapture (optional) Whether or not this listener should initiate capture. For more details on event capture and bubbling, see the relevant W3C DOM documentation.
*/
public static function addEventListener( targetObject : Dynamic, eventID : String, listenerCallback : Dynamic, useCapture : Bool ) : Void;

/*
Removes an event listener previously added using google.earth.addEventListener() from the event chain.
Note: You must pass in the exact same function object as was passed to addEventListener. If you are using an anonymous function callback, it will need to be refactored into its own variable.
Parameters:
  targetObject The object on which to stop listening to the event. eventID The event string (i.e. 'click', 'mouseover', 'frameend', etc.) identifying the event to stop listening for. listenerCallback The function, originally passed to google.earth.addEventListener(), that should no longer be called when the event occurs. useCapture (optional) Whether or not the originally added listener was set to initiate capture.
*/
public static function removeEventListener( targetObject : Dynamic, eventID : String, listenerCallback : Dynamic, useCapture : Bool ) : Void;

/*
Retrieves and parses a KML or KMZ file at the given URL and returns an instance of a KmlFeature-derived class representing the parsed KML object model.
Note: This function does not display the feature on the Earth. See below for more information.
Parameters:
  pluginInstance The instance of GEPlugin that will perform the URL fetching and parsing. url The URL at which the KML or KMZ content is posted. This URL should serve either the KML or KMZ content type. completionCallback A function that will be called with an instance of a KmlFeature-derived class as the first parameter upon successful fetching/parsing of the KML or KMZ content. If an error occurs, this function will be passed a null value.Note: In this function, you can display the loaded KML in Earth by calling ge.getFeatures().appendChild(object), assuming 'ge' is the GEPlugin instance variable in the callback function's scope and 'object' is the name of the first parameter to your callback function.
*/
public static function fetchKml( pluginInstance : GEPlugin, url : String, completionCallback : Dynamic ) : Void;

/*
Efficiently executes an arbitrary, user-defined function (the batch function), minimizing the amount of overhead incurred during cross-process communication between the web browser and Google Earth Plugin. This method is useful for batching together a large set of calls to the Earth API, for example, a large number of consecutive calls to KmlCoordArray.pushLatLngAlt. Note:This method is guaranteed to run synchronously; that is, executeBatch blocks and does not return until the batch function has completed. In fact there should be no difference between calling executeBatch(fn) and fn() besides execution performance. Parameters:
  pluginInstance The instance of GEPlugin that batched API calls will be executed on. batchFunction The function containing the code to be executed.
*/
public static function executeBatch( pluginInstance : GEPlugin, batchFunction : Dynamic ) : Void;

/*
Sets the language to be used for new instances of the plugin. Needs to be called before google.earth.createInstance(). Affects road and border labels, the error message displayed when the plugin fails to load, as well as the language of the Terms of Use page linked from the plugin. Parameters:
  languageCode Supported language codes are listed in the Google Maps API Coverage document. Note that we often update the languages that we support, so this list may not be exhaustive.
*/
public static function setLanguage( languageCode : String ) : Void;

}