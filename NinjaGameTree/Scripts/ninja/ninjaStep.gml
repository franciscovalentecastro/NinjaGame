{
    if( place_empty( x , y+1 ) && vspeed <= 0 ){   
        gravity = .5;
	}
	
	if( place_empty( x , y+1 ) && vspeed > 0 ){
		
		if( mode != "jump" && mode != "fall" ){
				script_execute( ninjaSetSprite , self.id , "fall" , self.facing);
				mode = "fall";
		}
	} 
}
