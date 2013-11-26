{
	var ID_1;
	var ID_2;
	var side;

	ID_1 = argument0;
	ID_2 = argument1;
	 
	script_execute( calculateBoundBox , ID_1 );
	script_execute( calculateBoundBox , ID_2 );
	
	side = script_execute( collisionSide , ID_1 ,ID_2 );
	
	if( side == "left" || side == "right" ){
		
		if( ( ID_1 ).bbox_y0 < ( ID_2 ).bbox_y0 ){
			return "wallClimb";
		}else{
			return "wall";
		}
		
	}
	
	if( side == "top" ){
		return "ceilClimb";
	}
	
	if( side == "bottom" ){
		return "floor";
	}
	
}
