{

		script_execute( calculateBoundBox , self.id );
	
		// DRAW EVENT
		draw_set_color( c_purple );
		draw_rectangle( self.bbox_x0 , self.bbox_y0 ,self.bbox_x1 ,self.bbox_y1 , true );
		
		draw_sprite(self.sprite_index, self.image_index , x, y);
		
		//draw_sprite( object_get_mask(object_index), 0, x, y );
}
