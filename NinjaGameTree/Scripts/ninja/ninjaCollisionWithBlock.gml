{   
	var otherID;
	otherID = instance_place(  x + hspeed , y + vspeed , obj_squareBlock  )
	
	// Check Collision
	if( otherID == noone ){
		exit;
	}
	
	// Update movement variables value
	direction = point_direction( x , y , x+hspeed , y+vspeed );
	
	 // Resolve Collision with Wall
    switch( mode ){	
	
        case "jump":
            mode = "fall"
            
        case "fall":        
				
				switch( script_execute( collisionType , self.id , otherID  )  ){
						
						case "ceil":
								vspeed = 0;
						break;
						
						case "wall":
								script_execute( solveCollision , self.id );
								hspeed = 0;
						
						break;
				
						case "wallClimb":					
								switch( facing ){
											case "left":
												sprite_index = spr_ninja_wall_left;
												break;
											case "right":
												sprite_index = spr_ninja_wall_right;
												break;
								}
								script_execute( solveCollision , self.id );
								
								hspeed = 0;
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
								
								script_execute( solveCollision , self.id );
							
								gravity = 0;
								vspeed = 0;
								
						break; //------------------------------------------------------------------------------------------------------------------------------------------------------------------//
				
						default : 
							script_execute( solveCollision , self.id );
							
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
							
							script_execute( solveCollision , self.id );	
							
							speed =0 ;
						break;
				}
				
		break;
    
        case "run" :
		
			script_execute( solveCollision , self.id );
		
             switch( facing ){
                case "left":
                    sprite_index = spr_ninja_stand_left;
                    break;
                case "right":
                    sprite_index = spr_ninja_stand_right;
                    break;
            }
			
			script_execute( solveCollision , self.id );
		
			hspeed = 0; 
            mode = "stand";
            
        break;
    
        case "stand" :
			script_execute( solveCollision , self.id );
			hspeed = 0;
        break;    
    }

}

