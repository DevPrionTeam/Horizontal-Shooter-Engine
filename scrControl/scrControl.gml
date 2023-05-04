/// scrControl(type);

function scrControl(type){
	
	// Types
	switch(type)
	{
		case 0://Keyboard
		{
			key_l = -keyboard_check(vk_left);
			key_r = keyboard_check(vk_right);
			key_u = -keyboard_check(vk_up);
			key_d = keyboard_check(vk_down);
			key_fire = keyboard_check(ord("S"));
			
			break;
		}
		//Other types here.
		
		default:// No controller set
		{
			game_end(0);
			break;
		}
		
	}
}