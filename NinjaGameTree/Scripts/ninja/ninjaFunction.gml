{
		var action , directionOfMovement;
		
		action = argument[0];
		if( argument_count > 1 ){ directionOfMovement = argument[1]; }
		
		switch( action ){
		
					case "jump": // Jump --------------------------------------------------------------------------------------------------------------------------------------//
						
						if( obj_ninja.mode != "jump" && obj_ninja.mode != "fall" ){
										script_execute( ninjaSetSprite , obj_ninja.id , "jump" , obj_ninja.facing );
										obj_ninja.vspeed = -7;
										obj_ninja.mode = "jump";
						}
						
					break;  //-------------------------------------------------------------------------------------------------------------------------------------------------------//
					
					case "move": // Move----------------------------------------------------------------------------------------------------------------------------------------//
						
							switch( obj_ninja.mode ){
								
								case "stand" :    //Standing ---------------------------------------//
									
										switch( directionOfMovement ){
											case "left" :
												obj_ninja.facing = "left";
												script_execute( ninjaSetSprite , obj_ninja.id , "run" , obj_ninja.facing );
												obj_ninja.hspeed = - 4;
											break;
											
											case "right" :
												obj_ninja.facing = "right";
												script_execute( ninjaSetSprite , obj_ninja.id , "run" , obj_ninja.facing );
												obj_ninja.hspeed = 4;						    
											break;
										}
										
										obj_ninja.mode = "run";   
												
								break;				// --------------------------------------------------//
								
								case "run" :      // Runnning---------------------------------------//
									
									if( obj_ninja.facing == "left" && directionOfMovement == "right" ){
											obj_ninja.facing = "right";
											script_execute( ninjaSetSprite , obj_ninja.id , "run" , obj_ninja.facing );	
											obj_ninja.hspeed = 4;     
									}
									
									if( obj_ninja.facing == "right" && directionOfMovement == "left" ){
											obj_ninja.facing = "left";
											script_execute( ninjaSetSprite , obj_ninja.id , "run" , obj_ninja.facing );	
											obj_ninja.hspeed = -4;      
									}
									
									obj_ninja.mode = "run";   
									
								break;	//-------------------------------------------------------------//
								
								case "fall" : // Falling -----------------------------------------------//
    
									if( directionOfMovement == "left" ){
										obj_ninja.facing = "left";    
										script_execute( ninjaSetSprite , obj_ninja.id , "fall" , obj_ninja.facing );
										obj_ninja.hspeed = -2;
									}

									if(directionOfMovement == "right" ){
										obj_ninja.facing = "right";
										script_execute( ninjaSetSprite , obj_ninja.id , "fall" , obj_ninja.facing );
										obj_ninja.hspeed = 2;
									} 
									
								break; //------------------------------------------------------------------//
								
								case "jump": //Jumping ------------------------------------------------//
								
									if( directionOfMovement == "left" ){ obj_ninja.hspeed -= .3; }
									if( directionOfMovement == "right" ){ obj_ninja.hspeed += .3; }
									
								break; //------------------------------------------------------------------//
							}
						
						
					break; //-------------------------------------------------------------------------------------------------------------------------------------------------------//
					
					case "stand": // Standing ----------------------------------------------------------------------------------------------------------------------------------//
						if( obj_ninja.mode != "jump" && obj_ninja.mode != "fall" ){
							
								script_execute( ninjaSetSprite , obj_ninja.id , "stand" , obj_ninja.facing );
								obj_ninja.hspeed = 0;
								obj_ninja.mode = "stand";   
								
						}
					break; //------------------------------------------------------------------------------------------------------------------------------------------------------//
		}
		
}
