{
    // Ninja Set Sprite
    var spriteToSet, spriteFacing;
 
    ID = argument[0];
    spriteToSet = argument[1];
    spriteFacing = argument[2];
 
    with((ID)) {
 
       switch (spriteToSet) {
           case "stand":
               switch (spriteFacing) {
                   case "left":
                      sprite_index = spr_ninja2_stand_left;
                  break;
                   case "right":
                      sprite_index = spr_ninja2_stand_right;
                  break;
               }
     
               mask_index = spr_ninja2_stand_mask;
             
               image_index = 0;
               image_speed = 1;
           break;
 
           case "run":
               switch (spriteFacing) {
                   case "left":
                      sprite_index = spr_ninja2_run_left;
                  break;
                   case "right":
                      sprite_index = spr_ninja2_run_right;
                  break;
               }
 
               mask_index = spr_ninja2_stand_mask;
 
               image_index = 0;
               image_speed = .5;
            break;
 
            case "jump":
                switch (spriteFacing) {
                    case "right":
                        sprite_index = spr_ninja_jump_right;
                    break;
 
                    case "left":
                        sprite_index = spr_ninja_jump_left;
                    break;
                }
 
                mask_index = spr_ninja_jump_mask;
 
                image_index = 0;
                image_speed = 1;
            break;
 
            case "fall":
                switch (spriteFacing) {
                    case "right":
                        sprite_index = spr_ninja_fall_right;
                    break;
     
                    case "left":
                        sprite_index = spr_ninja_fall_left;
                    break;
                }
     
                mask_index = spr_ninja_stand_mask;
     
                image_index = 0;
                image_speed = 0;
            break;
 
            case "wallStand":
                switch (spriteFacing) {
                    case "left":
                        sprite_index = spr_ninja_wallStand_left;
                    break;
                    case "right":
                        sprite_index = spr_ninja_wallStand_right;
                    break;
                }
 
                mask_index = spr_ninja_stand_mask;
                image_index = 0;
                image_speed = 0;
                
            break;
            
            case "wallClimb":
                switch (spriteFacing) {
                    case "left":
                        sprite_index = spr_ninja_wallClimb_left;
                    break;
                    case "right":
                        sprite_index = spr_ninja_wallClimb_right;
                    break;
                }
 
                mask_index = spr_ninja_stand_mask;
                image_index = 0;
                image_speed = .2;
                
            break;
            
            case "wallJump":
                switch (spriteFacing) {
                    case "left":
                        sprite_index = spr_ninja_wallJump_left;
                    break;
                    case "right":
                        sprite_index = spr_ninja_wallJump_right;
                    break;
                }
 
                mask_index = spr_ninja_stand_mask;
                image_index = 0;
                image_speed = .5;
                
            break;
        }
 
    }
}
 
