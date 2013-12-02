{
		var ID_1, ID_2;

		ID_1 = argument0;
		ID_2 = argument1;
		
		script_execute( solveCollision , ID_1 );
		
		// Find side of collision 
			
		if(  abs( ( ID_1 ).bbox_bottom   - ( ID_2 ).bbox_top  ) <= 2 ){
			return "bottom";
		}
		
		if(  abs( ( ID_1 ).bbox_top - ( ID_2 ).bbox_bottom  ) <= 2 ){
			return "top";
		}
		
		if(  abs( ( ID_1 ).bbox_right - ( ID_2 ).bbox_left  ) <= 2 ){
			return "right";
		}
		if(  abs( ( ID_1 ).bbox_left - ( ID_2 ).bbox_right  ) <= 2 ){
			return "left";
		}
		
		return "noSide";
}
