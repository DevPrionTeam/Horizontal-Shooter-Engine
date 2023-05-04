///scrGameplay(angle)

function scrGameplay(angle){

	// Firing
	if(FireTimer < timer) FireTimer--;
	if(key_fire && FireTimer <= 0)
	{
		var fire = instance_create_layer(x+35, y+1, "Instances", ObjBullet);
		fire.hsp = 10;//velocity
		FireTimer = timer - 1;
	}

}