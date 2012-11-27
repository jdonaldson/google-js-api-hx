import Google;
import KmlObject;
import haxe.xml.Fast;
import google.loader.ClientLocation;
using EarthHelper;

class RouteReplay3d {
	private static var xml_data_loc:String;
	
	public static function main(){
/*		Google.load('earth','1');
		Google.setOnLoadCallback(RouteReplay3d.onLoad);		*/
		
/*		haxe.Log.trace = untyped console.log;*/
/*		var polyline = "}ofoGdlpoVrAEd@JTh@Nt@Rn@\\Zb@Ld@@f@?d@IlA?DDHb@D`AHt@Pp@Zj@b@Tb@Ff@EnB{@b@Mf@Ab@@d@T`@`@^f@Vj@pAvFPn@Xh@Zd@|@|@Nr@Mt@Y`@c@Pg@Di@@e@Ha@TYh@Gt@Bt@JHXErAKd@Md@@d@AnAOd@Bd@?h@Dj@@d@Eb@Yf@AbAw@hCaB^?FDRr@j@bDTp@Nn@v@nA`CbGRl@nA~BZ`@^XdBfAd@NlAPvB@pBRnA@b@CnAHd@HpAFrALb@?dETzBNvBDrALh@?b@ClAFb@Af@?~CE`FSzBAb@CpAFrALvBVf@HjA\\jAX~CdApA\\xCdAzCpA`FnC`ErBfHhEnA^h@Fh@Bb@Hd@xAHp@FfD?pBGrB]zE[xGe@bGKr@Sp@g@tAYj@[d@yApBqC|DwBnC{@nAiE|FwBxCq@rAeAdCGr@Vd@Zd@f@J~CCvB@tAAxB?h@H\\ZVd@Hr@Gp@UfBEv@?x@Hv@Jr@b@|Ar@bAIF]][i@Si@]iBEw@BgBTeBFq@Ay@Sq@][g@Ag@H{BAkADmAImAE{BBc@YWg@Eo@Hu@Lo@bAoCjA}BZi@z@}@x@kAtF}Hz@sAjCqDvBiCVe@Xm@\\cBXoB@w@RmBLsBDy@?y@Hq@HiBHw@FgB@eBBu@?kBW_DGa@ICoAEmAYgG{CcHaEsC{AqCkAqBu@sBs@sHqBg@Ic@O_Di@sBSoA?wB@wBDe@DuBBiAFoADuBEoACe@G{CQmACoAKuBCcEW_D[{B@iFWc@EgA]c@Qa@WaAaA_@c@u@yAi@{Au@wAo@uAqB_FSq@Iq@Mo@Is@Ko@WKc@`@mAd@[^iAh@_@Xc@Rg@LkA?oAFc@EuGBe@MKo@Fu@Tk@Za@^Ub@IpAIb@KRm@Os@_A}@Yc@Uk@Sq@Os@YkBk@aB[m@]e@a@We@Ce@Fc@XoBt@g@Hi@Ia@Q_@]Um@Qq@KwBIc@s@CoALe@Ee@I_@SW[u@cB_@Wc@Ke@F";*/
/*		trace(polyline);*/
/*		trace(EarthHelper.decodeLine(polyline));*/

	}
	
	public static function initialize(xml_data_loc){
		RouteReplay3d.xml_data_loc = xml_data_loc;
		Google.load('earth','1');
		Google.setOnLoadCallback(RouteReplay3d.onLoad);
	}
	
	
	public static function onLoad(){

		google.Earth.createInstance('map3d', RouteReplay3d.initCallback, RouteReplay3d.failureCallback);
	}
	
	public static function initCallback(object:GEPlugin){

		var ge = object;
		ge.getLayerRoot().enableLayerById(ge.LAYER_BUILDINGS, true);
      	ge.getLayerRoot().enableLayerById(ge.LAYER_BORDERS, true);
		ge.getWindow().setVisibility(true);
		// add a navigation control
		ge.getNavigationControl().setVisibility(ge.VISIBILITY_AUTO);

		// add some layers
		ge.getLayerRoot().enableLayerById(ge.LAYER_BORDERS, true);
		ge.getLayerRoot().enableLayerById(ge.LAYER_ROADS, true);
		var la = ge.getView().copyAsLookAt(ge.ALTITUDE_RELATIVE_TO_GROUND);
		la.setRange(100000);
		ge.getView().setAbstractView(la);
		

/*		RouteReplay3d.xml_data_loc = 'http://gmap/~jjdonald/strands-running/gps_data';*/
		var req = haxe.Http.requestUrl(xml_data_loc);
		var xml = Xml.parse(req);
		var fxml = new Fast(xml);
		var line_str_kml = '<LineString><coordinates>\n';
		var coord_arr = new Array<EarthHelper.Coord>();
		for (i in fxml.node.training.node.coordinates.elements){
			var coord = {	altitude: resolve(i,'altitude'),
						  	distance: resolve(i,'distance'),
							heartrate: resolve(i,'heartrate'),
							latitude: resolve(i,'latitude'),
							longitude: resolve(i,'longitude'),
							time: resolve(i,'time')
						}
			line_str_kml += coord.longitude + ',' + coord.latitude + ',10\n';
			coord_arr.push(coord);
		}
		line_str_kml += '</coordinates></LineString>';
		

		var route_line_string:KmlLineString = cast(ge.parseKml(line_str_kml));
		route_line_string.setTessellate(true);
		var route_placemark = ge.createPlacemark('');

		route_placemark.setGeometry(route_line_string);
		
		route_placemark.setStyleSelector(ge.createLineStyle({width:10, color:'88FF0000'} ));
		ge.getFeatures().appendChild(route_placemark);
		
		ge.flyToLatLng(coord_arr[0].latitude, coord_arr[0].longitude);
		var sim = new Simulator(ge,coord_arr);
/*		sim.run(coord_arr[0], EarthHelper.getHeading(coord_arr[0], coord_arr[1]));*/
		initGUI(sim, ge);

	}
	
	private static function initGUI(sim:Simulator , ge:GEPlugin){
		var tickListener = function(){
			if (sim.do_tick){
				sim.tick();
			}
		}
		google.Earth.addEventListener(ge, 'frameend', tickListener, false);
		var finishModel = function(kml){
			sim.model_placemark = kml.getFeatures().getFirstChild();
			sim.model = cast sim.model_placemark.getGeometry();
			sim.model.setAltitudeMode(ge.ALTITUDE_RELATIVE_TO_GROUND);
			ge.getFeatures().appendChild(sim.model_placemark);
			sim.start();
		}
		google.Earth.fetchKml(ge, Simulator.model_url, finishModel);
	}


	
	private static function resolve(fnode:Fast,name:String){
		if(fnode.hasNode.resolve(name)){
			if (name == 'time'){
				var date_str = fnode.node.resolve(name).innerHTML;
				var reg = ~/(\d\d\d\d)-(\d\d)-(\d\d)T(\d\d):(\d\d):(\d\d)Z/;
				reg.match(date_str);
				if (reg.match(date_str)){
					var year = Std.parseInt(reg.matched(1));
					var month = Std.parseInt(reg.matched(2));
					var day = Std.parseInt(reg.matched(3));
					var hour = Std.parseInt(reg.matched(4));
					var min = Std.parseInt(reg.matched(5));
					var sec = Std.parseInt(reg.matched(6));
					var date = new Date(year, month, day, hour, min, sec);
					return date.getTime();
				}
				return null;
			}
			
			return Std.parseFloat(fnode.node.resolve(name).innerHTML);
		}
		return null;
	}
	
	public static function failureCallback(){}


}