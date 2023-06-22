
function scan(_roomwidth,_roomheight,_type = 0,_tilesize = 32)
{
	var _w = _roomwidth/_tilesize;
	var _h = _roomheight/_tilesize;
	
	var _target = oWall;
	if(_type == 1) _target = pItem;
	
	var _maparray = [];
	for(var i=0;i<_w;i++)
	{
		var _columnarray = [];
		for(var j=0;j<_h;j++)
		{
			var _obj = instance_place(i*_tilesize,j*_tilesize,_target);
			if(_obj != noone)
				array_push(_columnarray,true);
			else
				array_push(_columnarray,false);
		}
		array_push(_maparray,_columnarray);
	}
	return _maparray;
}

function render_scan_full(_maparray,_type = 0)
{
	var _w = array_length(_maparray);
	var _h = array_length(_maparray[0])
	
	var _surface = surface_create(_w,_h);
	surface_set_target(_surface);
	draw_clear(c_white);
	
	for(var i=0;i<_w;i++)
	{
		for(var j=0;j<_h;j++)
		{
			if(_maparray[i][j] != 0)
			{
				if(_type == 0) draw_point_color(i,j,c_black);
				else if(_type == 1) draw_sprite(sItemIcon,0,i,j);
			}
		}
	}
	
	surface_reset_target();
	
	return _surface;
}


function render_scan_cone(_surface,_conex,_coney,_coneangle,_conescale,_tilesize = 32)
{
	_conex /= _tilesize;
	_coney /= _tilesize;
	var _newsurface = surface_create(surface_get_width(_surface),surface_get_height(_surface));
	
	surface_set_target(_newsurface);
	draw_clear_alpha(c_white,0);
	draw_sprite_ext(sScanCone,0,_conex,_coney,_conescale,_conescale,_coneangle,c_white,1);
	gpu_set_blendmode_ext(bm_dest_alpha,bm_zero);
	draw_surface(_surface,0,0);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	return _newsurface;
}

function render_scan(_maparray,_conex,_coney,_coneangle,_conescale,_type = 0)
{
	var _full = render_scan_full(_maparray,_type);
	return render_scan_cone(_full,_conex,_coney,_coneangle,_conescale);
}