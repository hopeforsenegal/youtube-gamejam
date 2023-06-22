
function environment_scan(_roomwidth,_roomheight,_tilesize = 32)
{
	var _w = _roomwidth/_tilesize;
	var _h = _roomheight/_tilesize;
	
	var _maparray = [];
	for(var i=0;i<_w;i++)
	{
		var _columnarray = [];
		for(var j=0;j<_h;j++)
		{
			var _obj = instance_place(i*_tilesize,j*_tilesize,oWall);
			if(_obj != noone)
				array_push(_columnarray,true);
			else
				array_push(_columnarray,false);
		}
		array_push(_maparray,_columnarray);
	}
	return _maparray;
}

function render_environment_scan_full(_maparray)
{
	var _w = array_length(_maparray);
	var _h = array_length(_maparray[0])
	var _surface = surface_create(_w,_h);
	surface_set_target(_surface);
	draw_set_color(c_black);
	draw_clear(c_white);
	
	for(var i=0;i<_w;i++)
	{
		for(var j=0;j<_h;j++)
		{
			if(_maparray[i][j] != 0)
			{
				draw_point(i,j);
			}
		}
	}
	
	draw_set_color(c_white);
	surface_reset_target();
	
	return _surface;
}

function render_environment_scan_cone(_maparray)
{
	var _surface = render_environment_scan_full(_maparray);
	surface_set_target(_surface);
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sScanCone,1,0,0,1,1,0,c_white,1);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	return _surface;
}