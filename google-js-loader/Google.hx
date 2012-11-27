import js.Dom;
extern class Google {
	/**
	 *  Duck punches the Google.setOnLoadCallback function so that it also automatically fixes the haXe API namespaces.
	 *	@private
	 *	@return Void
	 */
	private static function __init__() : Void untyped {
		if (__js__('typeof(google)') == "undefined") {
			throw("Couldn't find \"google\" instance.  Make sure the api is referenced and loaded.");
		}else{
				Google = google;
			  __js__('Google._scb = Google.setOnLoadCallback;'); // save original function
				// duck punching!
				__js__('Google.setOnLoadCallback = function(x){ y = function(z){ ApiHelper.apiInit(); x()}; Google._scb(y); }');
		} 
	}
	
	public static function load( module : String, version : String, ?options : Dynamic<Dynamic>) : Void;	
	public static function setOnLoadCallback(initCB : Void->Void) : Void;

}
/**
 * ApiHelper :	Contains a helper function to fix API namespace differences between Google and HaXe.
 * 	Each of the javascript api's need to be added to this helper in order to ensure the namespaces
 * 	behave properly.	
 * 
 * @targets			js
 * @author			Justin Donaldson
 * @since			2010-07-07
 */
class ApiHelper {
	public static function apiInit() : Void untyped {
		__js__('if (google.earth) { google.Earth = window.google.earth}');
		__js__('if (google.maps) { google.maps.Event = window.google.maps.event}');
	}
}
