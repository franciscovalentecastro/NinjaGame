{
		var action;
		action = argument0;
		
		switch( action ){
					case "jump": // Jump --------------------------------------------------------------------------------------------------------------------------------//
						
						switch( facing ){
							case "right": 
								obj_ninja.sprite_index = spr_ninja_jump_right;    
								break;
						
							case "left":
								obj_ninja.sprite_index = spr_ninja_jump_left;    
								break;
						}

						obj_ninja.image_index = 0;
						obj_ninja.image_speed = 1;   
														  
						obj_ninja.vspeed = -6;
					
						obj_ninja.mode = "jump";
						
						break;  //----------------------------------------------------------------------------------------------------------------------------------------------//
		}
		
}
