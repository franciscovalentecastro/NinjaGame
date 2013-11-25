{
		ID_1 = argument0;
		ID_2 = argument1;
		
			// ID_1 bounding coordinates
			( ID_1 ).bbox_x0 = ( ID_1 ).x + sprite_get_bbox_left( ( ID_1 ).sprite_index );
			( ID_1 ).bbox_y0 = ( ID_1 ).y + sprite_get_bbox_top( ( ID_1 ).sprite_index );
			( ID_1 ).bbox_x1 = ( ID_1 ).x  + sprite_get_bbox_right( ( ID_1 ).sprite_index );
			( ID_1 ).bbox_y1 = ( ID_1 ).y + sprite_get_bbox_bottom( ( ID_1 ).sprite_index );
			
			show_debug_message( string( ( ID_1 ).bbox_x0 ) + " " + string( ( ID_1 ).bbox_y0 ) + " " + string( ( ID_1 ).bbox_x1 ) + " " + string( ( ID_1 ).bbox_y1 ) + " "  );
			
			// ID_2 bounding coordinates
			( ID_2 ).bbox_x0 = ( ID_2 ).x + sprite_get_bbox_left( ( ID_2 ).sprite_index );
			( ID_2 ).bbox_y0 = ( ID_2 ).y + sprite_get_bbox_top( ( ID_2 ).sprite_index );
			( ID_2 ).bbox_x1 = ( ID_2 ).x  + sprite_get_bbox_right( ( ID_2 ).sprite_index );
			( ID_2 ).bbox_y1 = ( ID_2 ).y + sprite_get_bbox_bottom( ( ID_2 ).sprite_index );
			
			
			show_debug_message( string( ( ID_2 ).bbox_x0 ) + " " + string( ( ID_2 ).bbox_y0 ) + " " + string( ( ID_2 ).bbox_x1 ) + " " + string( ( ID_2 ).bbox_y1 ) + " "  );
			
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
