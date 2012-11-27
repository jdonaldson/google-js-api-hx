import EarthHelper;

class Simulator {
	private var ge:GEPlugin;
	public var do_tick:Bool;
	private var old_fly_speed:Float;
	private static var TICK_SIM_MS = 66;
	private var total_time:Float;
	private var total_distance:Float;
	private var current_speed:Float;
	private var current_loc:Coord;
	private var path_index:Int;
	private var path:Array<Coord>;
	private var step_cb:Coord->Void;
	private var path_dist_travelled:Float;
	public static var _obj:Dynamic;
	private static var tc:Int = 0;
	public static var model_url = 'http://xavier.informatics.indiana.edu/~jjdonald/runner.kmz';
	public var model_placemark:KmlPlacemark;
	public var model:KmlModel;
	public function new(ge:GEPlugin, path:Array<Coord>, ?step_cb:Coord->Void){ 
		this.ge = ge; 
		this.path = path;
		this.step_cb = step_cb;
		do_tick = false;
		old_fly_speed = 0;
		total_time = 0;
		total_distance = 0;
		current_speed = 0;	
		path_index = 0;
		current_loc = path[0];
		path_dist_travelled = 0.0;
		Simulator._obj = this;
		}
	
	public function start(){
		do_tick = true;	
		old_fly_speed = ge.getOptions().getFlyToSpeed();
		ge.getOptions().setFlyToSpeed(ge.SPEED_TELEPORT);
		tick();
	}
	
	public static function foo(){
		
/*		_obj.do_tick = !_obj.do_tick;*/
		_obj.tick();
		
	}
	
	public function tick(){
		if (path_index > path.length-1) {
			this.do_tick = false;
			return;
		}
		

		if (step_cb != null) step_cb(path[path_index]);
		
		
		path_dist_travelled +=  300*TICK_SIM_MS/1000/60; // 66ms/1000prs/60prmin/60prhr

		var path_distance = EarthHelper.distance(path[path_index],path[path_index+1]);

		while (path_dist_travelled > path_distance){
			path_dist_travelled -= path_distance;
			path_index++;
			if (path_index > path.length-1) {
				this.do_tick = false;
				return;
			}
			path_distance = EarthHelper.distance(current_loc,path[path_index+1]);
		}

		
		current_loc = interpolateLoc(path[path_index],path[path_index+1], path_dist_travelled/path_distance);
		run(current_loc, EarthHelper.getHeading(current_loc, path[path_index+1] ));
		
		
	}
	
	public function moveToPointRunning(loc:Coord, heading:Float) {
		var oldLa = ge.getView().copyAsLookAt(ge.ALTITUDE_RELATIVE_TO_GROUND);
		var curHeading = oldLa.getHeading();
		var desiredHeading = heading;

		var curRange = oldLa.getRange();
		/*  var desiredRange = Math.max(20.0, this.currentSpeed );*/
		var desiredRange = 15.0;

		var la = ge.createLookAt('');

		la.set(loc.latitude, loc.longitude,
		    0, //alt
		    ge.ALTITUDE_RELATIVE_TO_GROUND,
		    curHeading + (getTurnToDirection(curHeading, desiredHeading)*.6),
		    75, //tilt
		    curRange + (desiredRange - curRange) * 0.1 // range (inverse of zoom)
		    );


		ge.getView().setAbstractView(la);
		
	}
	
	public function run(loc:Coord, heading:Float){
		model.getLocation().setLatLngAlt(loc.latitude,loc.longitude,0);
		model.getOrientation().setHeading(heading);
		moveToPointRunning(loc,heading);
		
	}
	
	public function getTurnToDirection(heading1:Float, heading2:Float) {
	  if (Math.abs(heading1 - heading2) < 1)
	    return heading2 - heading1;

	  return (EarthHelper.fixAngle(heading2 - heading1) < 0) ? -1 : 1;
	}
	
	
	
	public static function interpolateLoc(loc1:Coord, loc2:Coord, pct:Float) : Coord{

		return { 	altitude: loc1.altitude + pct * (loc2.altitude-loc1.altitude),
						distance: loc1.distance + pct * (loc2.distance - loc1.distance),
						heartrate: loc1.heartrate +  pct * (loc2.heartrate - loc1.heartrate),
						latitude: loc1.latitude + pct * (loc2.latitude - loc1.latitude),
						longitude: loc1.longitude + pct * (loc2.longitude - loc1.longitude),
						time: loc1.time + pct * (loc2.time - loc1.time),
		}
	}
}
