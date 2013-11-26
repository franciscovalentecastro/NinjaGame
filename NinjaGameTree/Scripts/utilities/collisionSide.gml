{
		var ID_1, ID_2;

		ID_1 = argument0;
		ID_2 = argument1;
		
		script_execute( calculateBoundBox , ID_1 );
		script_execute( calculateBoundBox , ID_2 );
			
		// Find side of collision 
			
		if(  abs( ( ID_1 ).bbox_y1 - ( ID_2 ).bbox_y0  ) <=3 ){
			return "bottom";
		}
		if(  abs( ( ID_1 ).bbox_x1 - ( ID_2 ).bbox_x0  ) <=3 ){
			return "right";
		}
		if(  abs( ( ID_1 ).bbox_x0 - ( ID_2 ).bbox_x1  ) <=3 ){
			return "left";
		}
		if(  abs( ( ID_1 ).bbox_y0 - ( ID_2 ).bbox_y1  ) <=3 ){
			return "top";
		}
}
