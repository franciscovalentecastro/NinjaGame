{

    var leftKey , rightKey, upKey;

    leftKey = keyboard_check( vk_left );
    rightKey = keyboard_check( vk_right );
    upKey = keyboard_check( vk_up );

	if( !leftPressed && leftKey ){ script_execute( ninjaFunction ,"move" , "left" ); }
	
	if( !rightPressed && rightKey ){ script_execute( ninjaFunction ,"move" , "right" ); }
	
	if( upKey ){ script_execute( ninjaFunction ,"jump" ); }
	
	if( !leftKey && !rightKey ){ script_execute( ninjaFunction ,"stand" ); }
	
    rightPressed = rightKey;
    leftPressed = leftKey;
    upPressed = upKey;
}
