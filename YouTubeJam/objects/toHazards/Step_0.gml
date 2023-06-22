
// Move this to a script
for (var i = 0; i < instance_number(oLava); ++i;)
{
    var lava = instance_find(oLava,i);
	if(lava != noone){	
		with(lava){
			var player = instance_place(x, y, oPlayer);
			if player != noone {
				// Do the thing!
				break;
			}
		}	
	}
}