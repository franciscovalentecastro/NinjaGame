{
    // Update movement variables value
    direction = point_direction(x, y, x + hspeed, y + vspeed);
 
    // Resolve Collision with Wall
    switch (mode) {
         
         case "jump":
             mode = "fall" 
             
         case "fall":
            switch (script_execute(collisionType, self.id, other.id)) {
 
                    case "ceil":
                        vspeed = 0;
                    break;
                     
                    case "wall":
                        
                        switch( script_execute( collisionSide, self.id, other.id) ){
                            case "left": self.facing = "left"; break;
                            case "right": self.facing = "right"; break;
                        }
                        
                        script_execute(ninjaSetSprite, self.id, "wallStand", self.facing);
                        script_execute(solveCollision, self.id);
                     
                        speed = 0;
                        gravity = 0;
                        mode = "wallStand";
                    
                    break;
                     
                    case "floor":// Floor Collision --------------------------------------------------------------------------------------------------------------------------------------//
                     
                        if (hspeed != 0) {
                                script_execute(ninjaSetSprite, self.id, "run", self.facing);
                                mode = "run";
                                switch (obj_ninja.facing) {
                                    case "left" : hspeed = -4; break;
                                    case "right": hspeed = 4;  break;
                                }
                                if( leftPressed ){ script_execute( ninjaFunction , "move" , "left" ); }
                                if( rightPressed ){ script_execute( ninjaFunction , "move" , "right" ); }
                        }else{
                            script_execute(ninjaSetSprite, self.id, "stand", self.facing);
                            mode = "stand";
                        }
                     
                        script_execute(solveCollision, self.id, "floor");
                     
                        gravity = 0;
                        vspeed = 0;
                     
                     
                    break;//------------------------------------------------------------------------------------------------------------------------------------------------------------------//
                     
                    default:
                        script_execute(solveCollision, self.id);
                    break;
            }
                     
        break;
 
        case "run":
             script_execute(solveCollision, self.id, "floor");
             script_execute(ninjaSetSprite, self.id, "stand", self.facing);
             hspeed = 0;
             mode = "stand";
 
        break;
 
        case "stand":
             script_execute(solveCollision, self.id, "floor");
             hspeed = 0;
        break;
    }
 
}
