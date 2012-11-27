class EarthHelper{

    /**
      Creates a polyline style for google earth.
     **/
    public static function createLineStyle(ge:GEPlugin, options:Dynamic){
        var style = ge.createStyle("");
        var line_style = style.getLineStyle();
        if (options.width != null){
            line_style.setWidth(options.width);
        }
        if (options.color){
            line_style.getColor().set(options.color);
        }
        return style;
    }

    /**
      Move to lat lon position in google earth
     **/
    public static function flyToLatLng(ge:GEPlugin, lat:Float, lon:Float){
        var la = ge.createLookAt('');
        la.set(lat,lon,10,ge.ALTITUDE_RELATIVE_TO_GROUND,90,0,200);
        ge.getView().setAbstractView(la);	
    }

    /**
      calculate distances in miles from two points
     **/
    public static function distance(point1:Coord, point2:Coord){
        var R = 3958.761; // miles	
        var dLat = rad2deg(point2.latitude-point1.latitude);
        var dLon = rad2deg(point2.longitude-point1.longitude);
        var a = Math.sin(dLat/2) * Math.sin(dLat/2) +
            Math.cos(rad2deg(point1.latitude)) * Math.cos(rad2deg(point2.latitude)) * 
            Math.sin(dLon/2) * Math.sin(dLon/2); 
        var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
        var d = R * c;
        return d;
    }

    /**
      helper function for radians to degrees
     **/
    private static function rad2deg(r:Float) { return r * (180 / Math.PI); }

    /**
      helper function for degrees to radians
     **/
    private static function deg2rad(r:Float){ return r * (Math.PI/180); }

    /**
      Gets the heading for loc1 to loc2
     **/
    public static function getHeading(loc1:Coord, loc2:Coord) {
        var lat1 = deg2rad(loc1.latitude);
        var lat2 = deg2rad(loc2.latitude);

        var dLon = deg2rad(loc2.longitude - loc1.longitude);

        var y = Math.sin(dLon) * Math.cos(lat2);

        var x = Math.cos(lat1)*Math.sin(lat2) -
            Math.sin(lat1)*Math.cos(lat2)*Math.cos(dLon);

        var brng = Math.atan2(y, x);
        brng = rad2deg(brng) % 360;


        return brng;
    }

    /**
      A polyline string decoder, returning an array of lat/lon pairs.
     **/
    public static function decodeLine (encoded:String) {
        var len = encoded.length;
        var index = 0;
        var array = [];
        var lat:Float = 0;
        var lng:Float = 0;

        while (index < len) {
            var b;
            var shift = 0;
            var result = 0;
            do {
                b = encoded.charCodeAt(index++) - 63;
                result |= (b & 0x1f) << shift;
                shift += 5;
            } while (b >= 0x20);
            var dlat:Float = ((result & 1 != 0) ? ~(result >> 1) : (result >> 1));
            lat += dlat;

            shift = 0;
            result = 0;
            do {
                b = encoded.charCodeAt(index++) - 63;
                result |= (b & 0x1f) << shift;
                shift += 5;
            } while (b >= 0x20);
            var dlng = ((result & 1 != 0) ? ~(result >> 1) : (result >> 1));
            lng += dlng;

            array.push([lat * 1e-5, lng * 1e-5]);
        }

        return array;
    }



    /**
      Fixes angle within -180 to 180 degrees
     **/
    public static function fixAngle(a:Float) {
        if ( a > 180) return a % 360;
        else if (a < -180) return -(Math.abs(a) % 360);
        else return a; 
    }
	
}


typedef Coord = {
	var altitude:Float;
	var distance:Float;
	var heartrate:Float;
	var latitude:Float;
	var longitude:Float;
	var time:Float;
}
