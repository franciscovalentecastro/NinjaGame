{
		var action , directionOfMovement;
		
		action = argument[0];
		if( argument_count > 1 ){ directionOfMovement = argument[1]; }
		
		switch( action ){
		
					case "jump": // Jump --------------------------------------------------------------------------------------------------------------------------------------//
						
						if( obj_ninja.mode != "jump" && obj_ninja.mode != "fall" ){
							
							switch( obj_ninja.facing ){
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
								
						}
						
					break;  //-------------------------------------------------------------------------------------------------------------------------------------------------------//
					
					case "move": // Move----------------------------------------------------------------------------------------------------------------------------------------//
						
							switch( obj_ninja.mode ){
								
								case "stand" :    //Standing ---------------------------------------//
									
										switch( directionOfMovement ){
											case "left" :
												obj_ninja.sprite_index = spr_ninja_run_left;
												obj_ninja.hspeed = - 4;
												obj_ninja.facing = "left";
											break;
											
											case "right" :
												obj_ninja.sprite_index = spr_ninja_run_right;
												obj_ninja.hspeed = 4;						    
												obj_ninja.facing = "right";
											break;
										}
										
										obj_ninja.image_index = 0 ;
										obj_ninja.image_speed = .5;
										
										obj_ninja.mode = "run";   
												
								break;				// --------------------------------------------------//
								
								case "run" :      // Runnning---------------------------------------//
									
									if( obj_ninja.facing == "left" && directionOfMovement == "right" ){
											obj_ninja.sprite_index = spr_ninja_run_right;		
											obj_ninja.hspeed = 4;     
											obj_ninja.facing = "right";
									}
									
									if( obj_ninja.facing == "right" && directionOfMovement == "left" ){
											obj_ninja.sprite_index = spr_ninja_run_left;
											obj_ninja.hspeed = -4;      
											obj_ninja.facing = "left";
									}
									
									obj_ninja.image_index = 0 ;
									obj_ninja.image_speed = .5;	
									
									obj_ninja.mode = "run";   
									
								break;	//-------------------------------------------------------------//
								
								case "fall" : // Falling -----------------------------------------------//
    
									if( directionOfMovement == "left" ){
										obj_ninja.sprite_index = spr_ninja_fall_left;
										obj_ninja.hspeed = -2;
										obj_ninja.facing = "left";    
									}

									if(directionOfMovement == "right" ){
										obj_ninja.sprite_index = spr_ninja_fall_right;
										obj_ninja.hspeed = 2;
										obj_ninja.facing = "right";
									} 
									
									obj_ninja.image_index = 0 ;
									obj_ninja.image_speed = 0;
									
								break; //------------------------------------------------------------------//
								
								case "jump": //Jumping ------------------------------------------------//
								
									if( directionOfMovement == "left" ){ obj_ninja.hspeed -= .3; }
									if( directionOfMovement == "right" ){ obj_ninja.hspeed += .3; }
									
								break; //------------------------------------------------------------------//
							}
						
						
					break; //-------------------------------------------------------------------------------------------------------------------------------------------------------//
					
					case "stand": // Standing ----------------------------------------------------------------------------------------------------------------------------------//
						if( obj_ninja.mode != "jump" && obj_ninja.mode != "fall" ){
							
								switch( obj_ninja.facing ){
									case "left":
										obj_ninja.sprite_index = spr_ninja_stand_left;
									break;
									
									case "right":
										obj_ninja.sprite_index = spr_ninja_stand_right;
									break;
								} 
								
								obj_ninja.image_index = 0 ;
								obj_ninja.image_speed = 0;
								
								obj_ninja.hspeed = 0;
								
								obj_ninja.mode = "stand";   
								
						}
					break; //------------------------------------------------------------------------------------------------------------------------------------------------------//
		}
		
}
