{   
	 // Resolve Collision with Wall
	 
    switch( mode ){	
	
        case "jump":
            mode = "fall"
            
        case "fall":        
            
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
			
			// ----------------------------------------- Resolve collision while falling with walls and floor ------------------------------------------------------------ //
            
			switch( script_execute( collisionSide, self.id , other.id )  ){
				case "bottom":
					gravity = 0;
					vspeed = 0;
					mode = "stand";
					break;
				
				case "left":
					hspeed = 0;
					break;
					
				case "right":
					hspeed = 0;
					break;
				
				case "top":
					vspeed = 0;
					break;
			}
			
			// -----------------------------------------------------------------------------------------------------------------------------------------------------------------------//
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

