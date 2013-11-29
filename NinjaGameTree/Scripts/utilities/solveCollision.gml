{
	// Solve Collision with solid
	var ID;
	ID = argument0;
	
	with( ( ID ) ){
		
			direction = point_direction(  x , y , x + hspeed , y + vspeed);
			
			if( place_free( x , y ) ){
			
				show_debug_message( "Move Contact" );
			
				move_contact_solid( direction , speed );
			}else{
				show_debug_message( "Move Outside" );
			
				move_outside_solid( ( direction + 180 ) mod 360 , speed );
			
			}
		}

}
