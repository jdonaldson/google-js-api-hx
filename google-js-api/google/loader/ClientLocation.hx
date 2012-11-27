package google.loader;
import js.Dom;
extern class ClientLocation {
	public static var latitude:String;
	public static var longitude:String;
	public static var address:Address;		
}

extern class Address {
	public var city:String;
	public var country:String;
	public var country_code:String;	
	public var region:String;			
}