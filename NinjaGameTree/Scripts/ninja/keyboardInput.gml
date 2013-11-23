{

    var leftKey , rightKey, upKey;

    leftKey = keyboard_check( vk_left );
    rightKey = keyboard_check( vk_right );
    upKey = keyboard_check( vk_up );

    if( vspeed > 0 ){
    
        if( leftKey ){
            sprite_index = ninja_fall_left;
            hspeed = -2;
        
            facing = "left";    
        }

        if( rightKey ){
            sprite_index = ninja_fall_right;
            hspeed = 2;
            
            facing = "right";
        } 
    }
    if( vspeed < 0  ){
            if( leftKey ){
                hspeed -= .3;
            }
            
            if( rightKey ){
                hspeed += .3;                
            } 
    }
    
    
    if( vspeed == 0 ){
        
            if( !leftKey && !rightKey ){
                speed = 0;
            }
            
            if( !rightKey && !leftKey && facing == "right" ){

                sprite_index = ninja_stand_right;
        
                image_index = 0 ;
                image_speed = 1;

                mode = "stand";                
            }
        
            if( !leftKey && !rightKey && facing == "left" ){
                sprite_index = ninja_stand_left;
        
                image_index = 0 ;
                image_speed = 1;
                
                mode = "stand";                   
            }
        
            if( ( mode == "stand" || ( mode == "run" && facing == "right" ) ) && leftKey ){
                sprite_index = ninja_run_left;
                        
                image_index = 0 ;
                image_speed = .5;
                
                hspeed = - 4;
                
                mode = "run";
                facing = "left";
            }
        
            if( ( mode == "stand" || ( mode == "run" && facing == "left" ) ) && rightKey ){
                sprite_index = ninja_run_right;
                
                image_index = 0 ;
                image_speed = .5;
        
                hspeed = 4;
                
                mode = "run";        
                facing = "right";
            }
            
            if( ( mode == "stand" || mode == "run" ) && upKey  ){            
                
                switch( facing ){
                    case "right": 
                        sprite_index = ninja_jump_right;    
                        break;
                
                    case "left":
                        sprite_index = ninja_jump_left;    
                        break;
                }

                image_index = 0;
                image_speed = 1;   
                                                  
                vspeed = -6;
                
                mode = "jump";
            }
    }    

    rightPressed = rightKey;
    leftPressed = leftKey;
    upPressed = upKey;
}
