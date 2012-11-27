import js.Lib;
class MapTest {
  public static function initialize() {
    var myLatlng = new google.maps.LatLng(-34.397, 150.644);
    var myOptions:google.maps.MapOptions = untyped {
      zoom: 8,
      center: myLatlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }

    var map = new google.maps.Map(Lib.document.getElementById("map_canvas"), myOptions);

  }

	public static function main(){
/*		Google.load('maps','3.x');*/
/*		Google.setOnLoadCallback(initialize);*/
		trace('hi');
		initialize();
	}
}