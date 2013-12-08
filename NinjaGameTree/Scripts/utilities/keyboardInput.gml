{
 
    var leftKey , rightKey, upKey, downKey, spaceKey;
    
    leftKey = keyboard_check( vk_left );
    rightKey = keyboard_check( vk_right );
    upKey = keyboard_check( vk_up );
    downKey = keyboard_check( vk_down );
    spaceKey = keyboard_check( vk_space );

    if( !leftPressed && leftKey ){ script_execute( ninjaFunction ,"move" , "left" ); }
    
    if( !rightPressed && rightKey ){ script_execute( ninjaFunction ,"move" , "right" ); }
    
    if( !upPressed && upKey ){ script_execute( ninjaFunction ,"move" , "up" ); }
    
    if( !downPressed && downKey ){ script_execute( ninjaFunction ,"move" , "down" ); }
    
    if( spaceKey ){ script_execute( ninjaFunction ,"jump" ); }
    
    if( !leftKey && !rightKey ){ script_execute( ninjaFunction , "stand" ); }
    
    if( !upKey && !downKey && ( leftKey || rightKey ) ){ script_execute( ninjaFunction , "wallStand" ); }

    rightPressed = rightKey;
    leftPressed  = leftKey;
    upPressed    = upKey;
    downPressed  = downKey;
    spacePressed = spaceKey;
}
