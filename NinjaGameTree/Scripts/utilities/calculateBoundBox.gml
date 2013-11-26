{
		var ID;
		ID = argument0;

		//Calculate bounding box coordinates
		
		// ID bounding coordinates
		( ID ).bbox_x0 = ( ID ).x + sprite_get_bbox_left( ( ID ).sprite_index );
		( ID ).bbox_y0 = ( ID ).y + sprite_get_bbox_top( ( ID ).sprite_index );
		( ID ).bbox_x1 = ( ID ).x  + sprite_get_bbox_right( ( ID ).sprite_index );
		( ID ).bbox_y1 = ( ID ).y + sprite_get_bbox_bottom( ( ID ).sprite_index );
			
		show_debug_message( string( ( ID ).bbox_x0 ) + " " + string( ( ID ).bbox_y0 ) + " " + string( ( ID ).bbox_x1 ) + " " + string( ( ID ).bbox_y1 ) + " "  );
		
}
