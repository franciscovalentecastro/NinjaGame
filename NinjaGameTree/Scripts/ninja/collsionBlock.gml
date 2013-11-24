{   

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
            
            if( ( direction <= 70 || direction >= 290 ) || ( direction <= 250 && direction >= 110 ) ){
                
                hspeed = 0;
                y+=1;
            }else{
            
                gravity = 0 ;
                vspeed = 0 ;
                
                mode = "stand";
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

