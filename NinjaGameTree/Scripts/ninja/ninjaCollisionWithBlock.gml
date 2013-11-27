{   
	 // Resolve Collision with Wall
	 
    switch( mode ){	
	
        case "jump":
            mode = "fall"
            
        case "fall":        
		
				switch( script_execute( collisionType , self.id , other.id  )  ){
						case "ceil":
						
								vspeed = 0;
								
								direction = 90;
								move_contact_solid( direction , 12 );
								
						break;
						
						case "wall":
								if( hspeed > 0 ){
									direction = 0
								}
								if( hspeed < 0 ){
									direction =  180;
								}
								
								hspeed = 0;
								move_contact_solid( direction , 12 );
						break;
				
						case "wallClimb":
								hspeed = 0;
								
								switch( facing ){
											case "left":
												sprite_index = spr_ninja_wall_left;
												break;
											case "right":
												sprite_index = spr_ninja_wall_right;
												break;
								}
								
								direction = radtodeg( arctan2( -vspeed , hspeed ) );
								move_contact_solid( direction , 12 );
								
								mode = "wallClimb";
								
						break;
						
						case "floor": // Floor Collision --------------------------------------------------------------------------------------------------------------------------------------//
								
							    if( hspeed != 0 ){
										switch( facing ){
											case "left":
												sprite_index = spr_ninja_run_left;
												break;
											case "right":
												sprite_index = spr_ninja_run_right;
												break;
										}
									
										image_index = 0;
										image_speed = .5;
										
										mode = "run";
								}else{
										switch( facing ){
											case "left":
												sprite_index = spr_ninja_stand_left;
												break;
											case "right":
												sprite_index = spr_ninja_stand_right;
												break;
										}
										
										image_index = 0;
										image_speed = 0;
										
										mode = "stand";
								}
								
								direction = 270;
								move_contact_solid( direction , 12 );
							
								gravity = 0;
								vspeed = 0;
										
						break; //------------------------------------------------------------------------------------------------------------------------------------------------------------------//
				
						default : 
						
							speed =0 ;
							
							switch( facing ){
											case "left":
												sprite_index = spr_ninja_stand_left;
												break;
											case "right":
												sprite_index = spr_ninja_stand_right;
												break;
							}
										
							image_index = 0;
							image_speed = 0;
									
							
							direction = radtodeg( arctan2( -vspeed , hspeed ) );
							move_contact_solid( direction , 12 );
				}
				
		break;
    
        case "run" :
             switch( facing ){
                case "left":
                    sprite_index = spr_ninja_stand_left;
                    break;
                case "right":
                    sprite_index = spr_ninja_stand_right;
                    break;
            }
        
            direction = radtodeg( arctan2( -vspeed , hspeed ) );
            move_contact_solid( direction , 12 );       
            hspeed = 0;
            
            mode = "stand";
            
        break;
    
        case "stand" :

            direction = radtodeg( arctan2( -vspeed , hspeed ) );
            move_contact_solid( direction , 12 );       
            hspeed = 0;

        break;    
    }
}

