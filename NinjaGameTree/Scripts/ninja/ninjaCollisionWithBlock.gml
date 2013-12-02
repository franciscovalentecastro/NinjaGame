{   
	show_debug_message( "Col" );
	
	// Update movement variables value
	direction = point_direction( x , y , x+hspeed , y+vspeed );
	
	 // Resolve Collision with Wall
    switch( mode ){	
	
        case "jump":
			show_debug_message( "Collision on Jump");
            mode = "fall"
            
        case "fall":        
				
				switch( script_execute( collisionType , self.id , other.id  )  ){
						
						case "ceil":
								vspeed = 0;
						break;
						
						case "wall":
								hspeed = 0;
						break;
				
						case "wallClimb":					
						
								script_execute( ninjaSetSprite , self.id , "wallClimb" , self.facing );
								
								script_execute( solveCollision , self.id );
								
								hspeed = 0;
								mode = "wallClimb";
								
						break;
						
						case "floor": // Floor Collision --------------------------------------------------------------------------------------------------------------------------------------//
								
							    if( hspeed != 0 ){
										script_execute( ninjaSetSprite , self.id , "run" , self.facing );
										mode = "run";					
								}else{
										script_execute( ninjaSetSprite , self.id , "stand" , self.facing );
										mode = "stand";
								}
								
								script_execute( solveCollision , self.id , "floor" );
							
								gravity = 0;
								vspeed = 0;
								
								
						break; //------------------------------------------------------------------------------------------------------------------------------------------------------------------//
				
						default : 
							script_execute( solveCollision , self.id );
						break;
				}
				
		break;
    
        case "run" :
			script_execute( solveCollision , self.id , "floor" );
            script_execute( ninjaSetSprite , self.id , "stand" , self.facing );
			hspeed = 0; 
            mode = "stand";
            
        break;
    
        case "stand" :
			script_execute( solveCollision , self.id , "floor" );
			hspeed = 0;
        break;    
    }

}

