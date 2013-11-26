{
	
    if( place_empty( x , y+1 ) && vspeed <= 0 ){   
        gravity = .5;
	}
	
	if( place_empty( x , y+1 ) && vspeed >= 0 ){
		
		if( facing == "left" ){  obj_ninja.sprite_index = spr_ninja_fall_left; }
		if( facing == "right" ){ obj_ninja.sprite_index = spr_ninja_fall_right; }
									
		obj_ninja.image_index = 0 ;
		obj_ninja.image_speed = 0;
		
		mode = "fall";
	} 

	show_debug_message( "Mode : " + mode );
}
