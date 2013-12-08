{
    var action, directionOfMovement;

    action = argument[0];
    if (argument_count > 1) {
        directionOfMovement = argument[1];
    }else{
        directionOfMovement = obj_ninja.facing;
    }

    switch (action) {

        case "jump":// Jump --------------------------------------------------------------------------------------------------------------------------------------//
            switch (obj_ninja.mode) {
                case "stand":
                        script_execute(ninjaSetSprite, obj_ninja.id, "jump", obj_ninja.facing);
                        obj_ninja.vspeed = -7;
                        obj_ninja.mode = "jump";
                break;
                case "run":
                        script_execute(ninjaSetSprite, obj_ninja.id, "jump", obj_ninja.facing);
                        obj_ninja.vspeed = -7;
                        obj_ninja.mode = "jump";
                break;
                case "wallJump":
                
                        switch( obj_ninja.facing ){
                            case "left":
                                obj_ninja.facing = "right";
                                script_execute(ninjaSetSprite, obj_ninja.id, "jump", obj_ninja.facing);
                                obj_ninja.hspeed = 7;
                            break;
                            case "right":
                                obj_ninja.facing = "left";
                                script_execute(ninjaSetSprite, obj_ninja.id, "jump", obj_ninja.facing);
                                obj_ninja.hspeed = -7;
                            break;
                        }
                        
                        obj_ninja.vspeed = -7;
                        obj_ninja.mode = "jump";
                        
                break;
            }
    
       break;//-------------------------------------------------------------------------------------------------------------------------------------------------------//

       case "move":// Move----------------------------------------------------------------------------------------------------------------------------------------//
    
             switch (obj_ninja.mode) {
        
                case "stand"://Standing ---------------------------------------//
            
                    switch (directionOfMovement) {
                        case "left":
                          obj_ninja.facing = "left";
                          script_execute(ninjaSetSprite, obj_ninja.id, "run", obj_ninja.facing);
                          obj_ninja.hspeed = -4;
                       break;
                    
                        case "right":
                            obj_ninja.facing = "right";
                            script_execute(ninjaSetSprite, obj_ninja.id, "run", obj_ninja.facing);
                            obj_ninja.hspeed = 4;
                       break;
                    }
                
                    obj_ninja.mode = "run";
        
                 break;// --------------------------------------------------//
    
                 case "run":// Runnning---------------------------------------//       
                 
                        if (obj_ninja.facing == "left" && directionOfMovement == "right") {
                            obj_ninja.facing = "right";
                            script_execute(ninjaSetSprite, obj_ninja.id, "run", obj_ninja.facing);
                            obj_ninja.hspeed = 4;
                        }
                    
                        if (obj_ninja.facing == "right" && directionOfMovement == "left") {
                            obj_ninja.facing = "left";
                            script_execute(ninjaSetSprite, obj_ninja.id, "run", obj_ninja.facing);
                            obj_ninja.hspeed = -4;
                        }
                          
                        obj_ninja.mode = "run";
            
                 break;//-------------------------------------------------------------//
    
                 case "fall":// Falling -----------------------------------------------//
                    
                 
                    if (directionOfMovement == "left") {
                        obj_ninja.facing = "left";
                        script_execute(ninjaSetSprite, obj_ninja.id, "fall", obj_ninja.facing);
                        obj_ninja.hspeed = -2;
                    }
                
                    if (directionOfMovement == "right") {
                        obj_ninja.facing = "right";
                        script_execute(ninjaSetSprite, obj_ninja.id, "fall", obj_ninja.facing);
                        obj_ninja.hspeed = 2;
                    }
                
                 break;//------------------------------------------------------------------//
    
                 case "jump"://Jumping ------------------------------------------------//
                        if (directionOfMovement == "left" && hspeed >= -1) {
                               obj_ninja.hspeed -= 3;
                        }
                            
                        if (directionOfMovement == "right" && hspeed <= 1) {
                               obj_ninja.hspeed += 3;
                        }  
                 break;//------------------------------------------------------------------//
                 
                 case "wallStand" : //Wall Stand ------------------------------------------------//
                        if (directionOfMovement == "up" ) {
                               obj_ninja.vspeed = -3;
                               script_execute(ninjaSetSprite, obj_ninja.id, "wallClimb", obj_ninja.facing);
                               obj_ninja.mode = "wallClimb"; 
                        }
                            
                        if (directionOfMovement == "down" ) {
                               obj_ninja.vspeed = 3;
                               script_execute(ninjaSetSprite, obj_ninja.id, "wallClimb", obj_ninja.facing);
                               obj_ninja.mode = "wallClimb"; 
                        } 
                        
                        if (directionOfMovement == "left" && obj_ninja.facing == "right" ) { 
                               obj_ninja.vspeed = 0;
                               script_execute( ninjaSetSprite, obj_ninja.id, "wallJump", obj_ninja.facing);
                               obj_ninja.mode = "wallJump"; 
                        }
                            
                        if (directionOfMovement == "right" && obj_ninja.facing == "left" ) {
                               obj_ninja.vspeed = 0;
                               script_execute( ninjaSetSprite, obj_ninja.id, "wallJump", obj_ninja.facing);
                               obj_ninja.mode = "wallJump";  
                        } 
                        
                 break;//------------------------------------------------------------------//
                 
                 case "wallClimb" : //Wall Climb ------------------------------------------------//
                        
                        if (directionOfMovement == "left" && obj_ninja.facing == "right" ) { 
                               obj_ninja.vspeed = 0;
                               script_execute( ninjaSetSprite, obj_ninja.id, "wallJump", obj_ninja.facing);
                               obj_ninja.mode = "wallJump"; 
                        }
                            
                        if (directionOfMovement == "right" && obj_ninja.facing == "left" ) {
                               obj_ninja.vspeed = 0;
                               script_execute( ninjaSetSprite, obj_ninja.id, "wallJump", obj_ninja.facing);
                               obj_ninja.mode = "wallJump";  
                        } 
                        
                 break;//------------------------------------------------------------------//
                 
                 case "wallJump" : //Wall Jump ------------------------------------------------//
                        
                        if (directionOfMovement == "left" && obj_ninja.facing == "left" ) { 
                               obj_ninja.vspeed = 0;
                               script_execute( ninjaSetSprite, obj_ninja.id, "wallStand", obj_ninja.facing);
                               obj_ninja.mode = "wallStand"; 
                        }
                            
                        if (directionOfMovement == "right" && obj_ninja.facing == "right" ) {
                               obj_ninja.vspeed = 0;
                               script_execute( ninjaSetSprite, obj_ninja.id, "wallStand", obj_ninja.facing);
                               obj_ninja.mode = "wallStand";  
                        } 
                        
                 break;//------------------------------------------------------------------//
            }


        break;//-------------------------------------------------------------------------------------------------------------------------------------------------------//

        case "stand":// Stand ----------------------------------------------------------------------------------------------------------------------------------//

            if ( obj_ninja.mode == "run" ||  obj_ninja.mode == "stand" ) {
            
                script_execute(ninjaSetSprite, obj_ninja.id, "stand", obj_ninja.facing);
                obj_ninja.hspeed = 0;
                obj_ninja.mode = "stand";
            
            }
            
            if ( obj_ninja.mode == "wallStand" || obj_ninja.mode == "wallJump" ){
                gravity = .5;
                script_execute( ninjaSetSprite , self.id , "fall" , self.facing);
                mode = "fall";   
            }
            
        break;//------------------------------------------------------------------------------------------------------------------------------------------------------//
        
        case "wallStand":// Stand ----------------------------------------------------------------------------------------------------------------------------------//
            
            if ( obj_ninja.mode == "wallClimb" ) {
            
                script_execute(ninjaSetSprite, obj_ninja.id, "wallStand", obj_ninja.facing);
                obj_ninja.vspeed = 0;
                obj_ninja.mode = "wallStand";
        
            }
            
        break;//------------------------------------------------------------------------------------------------------------------------------------------------------//
        
        
        case "fall":// Fall -------------------------------------------------------------------------------------------------------------------------------------------//
            if( obj_ninja.mode != "wallStand" && obj_ninja.mode != "wallClimb" && obj_ninja.mode != "wallJump" ){
                if( obj_ninja.vspeed <= 0 ){
                    obj_ninja.gravity = .5;
                }
            
                if( obj_ninja.vspeed > 0 ){
                    if( obj_ninja.mode != "jump" && obj_ninja.mode != "fall" ){
                        script_execute( ninjaSetSprite , obj_ninja.id , "fall" , obj_ninja.facing);
                        obj_ninja.mode = "fall";                
                    }
                }
            }                  
        break; //------------------------------------------------------------------------------------------------------------------------------------------------------//   
    }

}

