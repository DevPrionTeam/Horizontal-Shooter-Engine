///scrCollisionCheckY(ColliderObj);

function scrCollisionCheckY(col){

	//Collision check
	if(place_meeting(x, y + vsp, col))
	{
		while(!place_meeting(x, y + sign(vsp), col))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}
	
	//Apply the move to X coord.
	y += vsp;
}