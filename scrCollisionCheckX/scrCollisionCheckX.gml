///scrCollisionCheckX(colliderObj);

function scrCollisionCheckX(col){
	
	//Collision check
	if(place_meeting(x + hsp, y, col))
	{
		while(!place_meeting(x + sign(hsp), y, col))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
	
	//Apply the move to X coord.
	x += hsp;
}